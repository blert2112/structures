
--[[
	mapseed = "pyrtest"
	desert at: 508 24 787
]]

-- check for valleys_c mod and create or localize needed funtions/tables
local table_contains, biome_ids
if core.get_modpath("valleys_c") then
	table_contains = table.contains
	biome_ids = valc.biome_ids
else
	-- the following bits were borrowed from the valleys_c mod
	if not core.get_biome_id then
		core.log()
		core.log("* Not loading Structures *")
		core.log("Requires functions which are not")
		core.log(" exposed by your Minetest build.")
		core.log()
		return
	end

	table_contains = function(table, element)
		for key, value in pairs(table) do
			if value == element then
				if key then
					return key
				else
					return true
				end
			end
		end
		return false
	end

	biome_ids = {}
	for name, desc in pairs(core.registered_biomes) do
		local n = core.get_biome_id(desc.name)
		biome_ids[n] = desc.name
	end
end


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
		biomes = structure.biomes,
		offset = structure.offset,
		avoid_short = structure.avoid_short,
		avoid_long = structure.avoid_long
	})
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
dofile(path.."/md_desert_pyramid.lua")
dofile(path.."/md_jungle_pyramid.lua")
dofile(path.."/md_henge.lua")
dofile(path.."/sm_shipwreck.lua")

local c_air = core.get_content_id("air")

core.register_on_generated(function(minp, maxp, seed)
	if structure_list == {} then return end
	if maxp.y < 0 then return end

	--rarity
	--if math.random(0,10) > 7 then return end

	local t1 = os.clock()


	-- get a random position
	local pos_t1,pos_t2
	pos_t1 = os.clock()
----
	local pos = {}
	local index2d
	do
		local hm = core.get_mapgen_object("heightmap")
		local sidelen = maxp.x - minp.x + 1
		pos = {
			x = math.random(minp.x,maxp.x),
			y = -1,
			z = math.random(minp.z,maxp.z)
		}
		index2d = (pos.z - minp.z) * sidelen + (pos.x - minp.x)
		pos.y = hm[index2d] + 1
	end
	if pos.y < minp.y or pos.y > maxp.y then
		print("[structures] position out of bounds, returning")
		print("[structures] pos: "..core.pos_to_string(pos))
		print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
		print("*******************")
		return
	end
----
	pos_t2 = os.clock()


	-- get structure
	local gs_t1,gs_t2
	gs_t1 = os.clock()
----
	local structure = 0
	local lenx, lenz, height
	do
		local bm = core.get_mapgen_object("biomemap")
		local biome = biome_ids[bm[index2d]]
		for i = 1, #structure_list do
			if table_contains(structure_list[i].biomes, biome) then
				structure = i
				lenx = structure_list[structure].size.x
				lenz = structure_list[structure].size.z
				height = structure_list[structure].size.y
			end
		end
	end
	if structure == 0 then
		print("[structures] suitable structure not found, returning")
		print("[structures] pos: "..core.pos_to_string(pos))
		print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
		print("*******************")
		return
	end
----
	gs_t2 = os.clock()


	-- get voxelmanip
	local gvm_t1,gvm_t2
	gvm_t1 = os.clock()
----
	local vm, emin, emax = core.get_mapgen_object("voxelmanip")
	local vm_area = VoxelArea:new({MinEdge = emin, MaxEdge = emax})
	local vm_data = vm:get_data()
	local stride = vm_area.ystride
----
	gvm_t2 = os.clock()


	-- to ground
	local tg_t1,tg_t2
	tg_t1 = os.clock()
----
	do
		local corner = {x=pos.x + lenx-1, y=pos.y, z=pos.z + lenz-1}
		local gc
		for y = pos.y-1, pos.y-1-(math.floor(height/2)),-1 do
			gc = true
			for z = pos.z, corner.z do
				for x = pos.x, corner.x do
					local index = vm_area:index(x,y,z)
					if vm_data[index] == c_air then
						gc = false
						break
					end
				end
				if gc == false then break end
			end
			if gc == true then
				pos.y = y + 1
				break
			end
		end
		if gc == false then
			print("[structures] suitable ground not found, returning")
			print("[structures] pos: "..core.pos_to_string(pos))
			print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
			print("*******************")
			return
		end
	end
	if pos.y < minp.y or pos.y > maxp.y then
		print("[structures] position out of bounds, returning")
		print("[structures] pos: "..core.pos_to_string(pos))
		print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
		print("*******************")
		return
	end
----
	tg_t2 = os.clock()


	-- check nearby nodes
	local cnn_t1,cnn_t2
	cnn_t1 = os.clock()
----
	do
		if structure_list[structure].avoid_short or structure_list[structure].avoid_long then
			local dist = structure_list[structure].avoid_short.distance
			for z = emin.z, emax.z do
				for x = emin.x, emax.x do
					local avoid_short = false
					if (z >= pos.z-dist) and (z <= pos.z+lenz+dist) and (x >= pos.x-dist) and (x <= pos.x+lenx+dist) and structure_list[structure].avoid_short then
						avoid_short = true
					end
					local index = vm_area:index(x, pos.y, z)
					for h = -height, height*2 do
						local ind = index + (stride*h)
						if avoid_short == true then
							for i = 1, #structure_list[structure].avoid_short.nodes do
								if vm_data[ind] == structure_list[structure].avoid_short.nodes[i] then
									print("[structures] avoid SHORT node found, returning")
									print("[structures] pos: "..core.pos_to_string(pos))
									print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
									print("*******************")
									return
								end
							end
						end
						if structure_list[structure].avoid_long then
							for i = 1, #structure_list[structure].avoid_long do
								if vm_data[ind] == structure_list[structure].avoid_long[i] then
									print("[structures] avoid LONG node found, returning")
									print("[structures] pos: "..core.pos_to_string(pos))
									print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
									print("*******************")
									return
								end
							end
						end
					end
				end
			end
		end
	end
----
	cnn_t2 = os.clock()


	-- place schematic
	local ps_t1,ps_t2
	ps_t1 = os.clock()
----
	--core.place_schematic(pos, structure_list[structure].id, "random", nil, true)

	if core.place_schematic_on_vmanip(vm, pos, structure_list[structure].id, "random", nil, true) == true then
		vm:calc_lighting()	-- turn this off and things get very fast but lighting can be all funked up
		vm:write_to_map()
	else
		print("[structures] structure did not fit in chunk")
	end
----


	ps_t2 = os.clock()

	print("[structures] pos: "..core.pos_to_string(pos))
	print("[structures] chunk: "..math.ceil((os.clock() - t1) * 1000).."ms")
	print("-------------------")
	print("[structures] position: "..math.ceil((pos_t2 - pos_t1) * 1000).."ms")
	print("[structures] structure: "..math.ceil((gs_t2 - gs_t1) * 1000).."ms")
	print("[structures] vm: "..math.ceil((gvm_t2 - gvm_t1) * 1000).."ms")
	print("[structures] ground: "..math.ceil((tg_t2 - tg_t1) * 1000).."ms")
	print("[structures] avoid: "..math.ceil((cnn_t2 - cnn_t1) * 1000).."ms")
	print("[structures] place: "..math.ceil((ps_t2 - ps_t1) * 1000).."ms")
	print("*******************")
end)

-- testing purposes
core.register_chatcommand("pp", {
	description = "Place pryamid",
	func = function(name, param)
		local player = core.get_player_by_name(name)
		local pos = player:getpos()
		core.place_schematic(pos, structure_list[4].id, "random", nil, true)
	end
})
