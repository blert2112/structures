
--[[
	md_pryamid test
	mapseed = "pyrtest"
	desert at: 508 24 787
]]

structures = {}

local structure_list = {}


--[[		EXTERNAL FUNCTIONS		]]

-- add new structure(s) to list
function structures:add_structure(name, structure)
	local id = core.register_schematic(structure.schematic)
	table.insert(structure_list, {
		name = name,
		id = id,
		size = structure.schematic.size,
		where_in = structure.where_in,
		offset = structure.offset,
		avoid_short = structure.avoid_short,
		avoid_long = structure.avoid_long
	})
	--structure_list.name = structure
end

function structures:chest_init(pos, formspec, infotext, item_list)
	-- use default formspec?
	if not formspec then
		formspec =
			"size[8,9]" ..
			default.gui_bg ..
			default.gui_bg_img ..
			default.gui_slots ..
			"list[current_name;main;0,0.3;8,4;]" ..
			"list[current_player;main;0,4.85;8,1;]" ..
			"list[current_player;main;0,6.08;8,3;8]" ..
			"listring[current_name;main]" ..
			"listring[current_player;main]" ..
			default.get_hotbar_bg(0,4.85)
	end
	-- use default infotext?
	if not infotext then infotext = "Chest" end
	-- set meta
	local meta = core.get_meta(pos)
	meta:set_string("formspec", formspec)
	meta:set_string("infotext", infotext)
	local inv = meta:get_inventory()
	inv:set_size("main", 8*4)
	-- add items
	if item_list then
		for i = 0,3 do
			local item = item_list[math.random(1, #item_list)]
			inv:set_stack("main", math.random(1, 32), {name = item.name, count = math.random(1, item.max)})
		end
	end
end

--[[		END EXTERNAL FUNCTIONS		]]


local path = core.get_modpath("structures")
dofile(path.."/nodes.lua")
dofile(path.."/md_pyramid.lua")
dofile(path.."/md_henge.lua")

local c_air = core.get_content_id("air")

core.register_on_generated(function(minp, maxp, seed)
	if structure_list == {} then return end
	if maxp.y < 0 then return end

	--rarity
	--if math.random(0,10) > 7 then return end

	local t1 = os.clock()

	-- get voxelmanip
	local vm, emin, emax = core.get_mapgen_object("voxelmanip")
	local vm_area = VoxelArea:new({MinEdge = emin, MaxEdge = emax})
	local vm_data = vm:get_data()
	local ystride = vm_area.ystride

	-- get a random position and a structure
	local pos = nil
	local structure
	local post1,post2
	do
		post1 = os.clock()
		local p1 = {
			x = math.random(minp.x,maxp.x),
			y = maxp.y,
			z = math.random(minp.z,maxp.z)
		}
		local index = vm_area:index(p1.x, p1.y, p1.z)
		while vm_data[index] == c_air do
			index = index - ystride
		end
		for i = 1, #structure_list do
			if vm_data[index] == structure_list[i].where_in then
				structure = i
				pos = vm_area:position(index)
				pos = {
					x = pos.x + structure_list[i].offset.x,
					y = pos.y + structure_list[i].offset.y,
					z = pos.z + structure_list[i].offset.z,
				}
				break
			end
		end
		if pos == nil or pos.y < 0 then return end
		post2 = os.clock()
	end

	local lenx = structure_list[structure].size.x
	local lenz = structure_list[structure].size.z
	local height = structure_list[structure].size.y

	-- check nearby nodes
	local cnnt1,cnnt2
	do
		cnnt1 = os.clock()
		local dist = structure_list[structure].avoid_short.distance
		for x = emin.x, emax.x do
			for z = emin.z, emax.z do
				local avoid_short = false
				if (z >= pos.z-dist) and (z <= pos.z+lenz+dist) and (x >= pos.x-dist) and (x <= pos.x+lenx+dist) then
					avoid_short = true
				end
				local index = vm_area:index(x, pos.y, z)
				for h = -height, height*2 do
					local ind = index + (ystride*h)
					if avoid_short == true then
						for i = 1, #structure_list[structure].avoid_short.nodes do
							if vm_data[ind] == structure_list[structure].avoid_short.nodes[i] then
								return
							end
						end
					end
					for i = 1, #structure_list[structure].avoid_long do
						if vm_data[ind] == structure_list[structure].avoid_long[i] then
							return
						end
					end
					
				end
			end
		end
		cnnt2 = os.clock()
	end

	-- get corners
	local corners = {}
	corners[1] = pos
	corners[2] = {x=pos.x + lenx-1, y=pos.y, z=pos.z}
	corners[3] = {x=pos.x + lenx-1, y=pos.y, z=pos.z +lenz-1}
	corners[4] = {x=pos.x, y=pos.y, z=pos.z + lenz-1}

	-- corners to ground
	do
		local ground = 0
		for i = 1,4 do
			local count = 0
			local index = vm_area:index(corners[i].x, corners[i].y-1, corners[i].z)
			while vm_data[index] == c_air do
				count = count + 1
				index = index - ystride
			end
			if count > height+1 then return end
			if count > ground then ground = count end
		end
		pos.y = pos.y - ground
	end

	-- place schematic
	if core.place_schematic_on_vmanip(vm, pos, structure_list[structure].id, "random", nil, true) == true then
		--vm:calc_lighting()
		vm:write_to_map()
	end

	print("[structures] pos: "..core.pos_to_string(pos))
	print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
	print("[structures] position: "..math.ceil((post2 - post1) * 1000).."ms")
	print("[structures] avoid: "..math.ceil((cnnt2 - cnnt1) * 1000).."ms")
	print("*******************")
end)

-- testing purposes
core.register_chatcommand("pp", {
	description = "Place pryamid",
	func = function(name, param)
		local player = core.get_player_by_name(name)
		local pos = player:getpos()
		core.place_schematic(pos, structure_list[1].id, "random", nil, true)
	end
})
