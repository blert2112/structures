
-- medium jungle pyramid

-- structure setup
local i = {name="ignore"}
local a = {name="air"}

local b = {name="structures:trap2"}
local c = {name="structures:trap2_marker"}
local d = {name="structures:chest1"}

local j = {name="default:stone"}
local k = {name="stairs:stair_stone"}
local l = {name="stairs:stair_stone", param2 = 1}
local m = {name="stairs:stair_stone", param2 = 2}
local n = {name="stairs:stair_stone", param2 = 3}
local o = {name="stairs:slab_stone"}
local p = {name="default:cobble"}
local q = {name="stairs:stair_cobble"}
local r = {name="stairs:stair_cobble", param2 = 1}
local s = {name="stairs:stair_cobble", param2 = 2}
local t = {name="stairs:stair_cobble", param2 = 3}
local u = {name="stairs:slab_cobble"}

local avoid_short_nodes = {
	core.get_content_id("default:water_source"),
	core.get_content_id("default:water_flowing"),
	core.get_content_id("default:river_water_source"),
	core.get_content_id("default:river_water_flowing")
}
if core.get_modpath("valleys_c") then
	avoid_short_nodes[#avoid_short_nodes+1] = core.get_content_id("valleys_c:water_source")
	avoid_short_nodes[#avoid_short_nodes+1] = core.get_content_id("valleys_c:water_flowing")
	avoid_short_nodes[#avoid_short_nodes+1] = core.get_content_id("valleys_c:river_water_source")
	avoid_short_nodes[#avoid_short_nodes+1] = core.get_content_id("valleys_c:river_water_flowing")
end

local avoid_long_nodes = {
	core.get_content_id("default:cobble"),
	core.get_content_id("stairs:stair_cobble")
}

local chest_items = {
	{name="default:apple", max = 3},
	{name="farming:bread", max = 3},
	{name="default:steel_ingot", max = 2},
	{name="default:gold_ingot", max = 2},
	{name="default:diamond", max = 1},
	{name="default:pick_steel", max = 1}
}

-- structure definition
structures:add_structure("md_jungle_pyramid", {
	biomes = {"jungle", "rainforest"},
	avoid_short = {
		distance = 20,
		nodes = avoid_short_nodes
	},
	avoid_long = avoid_long_nodes,
	offset = {x=0, y=0, z=0},
	schematic = {
		size = {x=19, y=11, z=19},
		data = {
			j,j,j,j,j,j,j,j,k,k,k,j,j,j,j,j,j,j,j,
			i,i,i,i,i,i,i,k,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--1
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,k,k,k,j,j,j,j,j,j,j,i,
			i,i,i,i,i,i,i,k,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--2
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,k,k,k,j,j,j,j,j,j,i,i,
			i,i,i,i,i,i,i,k,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--3
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,k,k,k,j,j,j,j,j,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--4

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,k,k,k,j,j,j,j,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--5
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,p,t,a,a,a,r,p,j,j,j,j,j,i,
			i,i,j,j,j,j,a,a,a,a,a,a,a,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,j,j,j,j,j,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,k,k,k,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--6

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,p,j,t,a,a,a,r,j,p,j,j,j,j,i,
			i,i,j,j,j,a,d,a,a,a,a,a,d,a,j,j,j,i,i,
			i,i,i,j,j,j,a,a,a,a,a,a,a,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,j,j,j,j,j,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,k,k,k,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--7
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			l,j,j,j,j,s,s,u,a,a,a,u,s,s,j,j,j,j,n,
			i,l,j,j,j,a,a,a,a,a,a,a,a,a,j,j,j,n,i,
			i,i,l,j,j,j,a,a,a,a,a,a,a,j,j,j,n,i,i,
			i,i,i,l,j,j,j,j,j,j,j,j,j,j,j,n,i,i,i,
			i,i,i,i,l,j,j,j,j,j,j,j,j,j,n,i,i,i,i,
			i,i,i,i,i,l,j,j,j,j,j,j,j,n,i,i,i,i,i,
			i,i,i,i,i,i,l,j,k,k,k,j,n,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,o,o,o,o,o,i,i,i,i,i,i,i,
			--8
			
			l,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,n,
			i,l,j,j,j,a,a,a,a,a,a,a,a,a,j,j,j,n,i,
			i,i,l,j,j,a,a,a,a,a,a,a,a,a,j,j,n,i,i,
			i,i,i,l,j,j,a,a,a,a,a,a,a,j,j,n,i,i,i,
			i,i,i,i,l,j,j,j,j,j,j,j,j,j,n,i,i,i,i,
			i,i,i,i,i,l,j,j,j,j,j,j,j,n,i,i,i,i,i,
			i,i,i,i,i,i,l,j,j,j,j,j,n,i,i,i,i,i,i,
			i,i,i,i,i,i,i,l,j,j,j,n,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,o,o,o,o,o,i,i,i,i,i,i,i,
			--9
			
			l,j,j,j,j,j,j,j,j,c,j,j,j,j,j,j,j,j,n,
			i,l,j,j,j,a,a,a,a,a,a,a,a,a,j,j,j,n,i,
			i,i,l,j,j,a,a,a,a,a,a,a,a,a,j,j,n,i,i,
			i,i,i,l,j,j,a,a,a,a,a,a,a,j,j,n,i,i,i,
			i,i,i,i,l,j,j,j,j,a,j,j,j,j,n,i,i,i,i,
			i,i,i,i,i,l,j,j,j,a,j,j,j,n,i,i,i,i,i,
			i,i,i,i,i,i,l,j,j,a,j,j,n,i,i,i,i,i,i,
			i,i,i,i,i,i,i,l,j,b,j,n,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,o,o,o,o,o,i,i,i,i,i,i,i,
			--10
			
			l,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,n,
			i,l,j,j,j,a,a,a,a,a,a,a,a,a,j,j,j,n,i,
			i,i,l,j,j,a,a,a,a,a,a,a,a,a,j,j,n,i,i,
			i,i,i,l,j,j,a,a,a,a,a,a,a,j,j,n,i,i,i,
			i,i,i,i,l,j,j,j,j,j,j,j,j,j,n,i,i,i,i,
			i,i,i,i,i,l,j,j,j,j,j,j,j,n,i,i,i,i,i,
			i,i,i,i,i,i,l,j,j,j,j,j,n,i,i,i,i,i,i,
			i,i,i,i,i,i,i,l,j,j,j,n,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,o,o,o,o,o,i,i,i,i,i,i,i,
			--11
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			l,j,j,j,j,q,q,u,a,a,a,u,q,q,j,j,j,j,n,
			i,l,j,j,j,a,a,a,a,a,a,a,a,a,j,j,j,n,i,
			i,i,l,j,j,j,a,a,a,a,a,a,a,j,j,j,n,i,i,
			i,i,i,l,j,j,j,j,j,j,j,j,j,j,j,n,i,i,i,
			i,i,i,i,l,j,j,j,j,j,j,j,j,j,n,i,i,i,i,
			i,i,i,i,i,l,j,j,j,j,j,j,j,n,i,i,i,i,i,
			i,i,i,i,i,i,l,j,m,m,m,j,n,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,o,o,o,o,o,i,i,i,i,i,i,i,
			--12
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,p,j,t,a,a,a,r,j,p,j,j,j,j,i,
			i,i,j,j,j,a,d,a,a,a,a,a,d,a,j,j,j,i,i,
			i,i,i,j,j,j,a,a,a,a,a,a,a,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,j,j,j,j,j,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,m,m,m,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,m,i,i,i,m,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--13
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,p,t,a,a,a,r,p,j,j,j,j,j,i,
			i,i,j,j,j,j,a,a,a,a,a,a,a,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,j,j,j,j,j,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,m,m,m,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,i,m,i,i,i,m,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--14
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,m,m,m,j,j,j,j,i,i,i,i,
			i,i,i,i,i,i,i,m,i,i,i,m,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--15
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,m,m,m,j,j,j,j,j,i,i,i,
			i,i,i,i,i,i,i,m,i,i,i,m,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--16
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,m,m,m,j,j,j,j,j,j,i,i,
			i,i,i,i,i,i,i,m,i,i,i,m,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--17
			
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,m,m,m,j,j,j,j,j,j,j,i,
			i,i,i,i,i,i,i,m,i,i,i,m,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--18
			
			j,j,j,j,j,j,j,j,m,m,m,j,j,j,j,j,j,j,j,
			i,i,i,i,i,i,i,m,i,i,i,m,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			--19
		}
	}
})

-- trap ABM
core.register_abm({
	nodenames = {"structures:trap2_marker"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local continue = false
		local objs = core.get_objects_inside_radius(pos, 2)
		for _,obj in ipairs(objs) do
			if obj:is_player() then
				continue = true
				break
			end
		end
		if continue == true then
			core.set_node(pos, {name="default:stone"})
			local p = {x=pos.x, y=pos.y+2, z=pos.z}
			p.x = pos.x + 3
			p.z = pos.z + 3
			structures:chest_init(p, nil, "Ancient Chest", chest_items)
			p.x = pos.x + 3
			p.z = pos.z - 3
			structures:chest_init(p, nil, "Ancient Chest", chest_items)
			p.x = pos.x - 3
			p.z = pos.z + 3
			structures:chest_init(p, nil, "Ancient Chest", chest_items)
			p.x = pos.x - 3
			p.z = pos.z - 3
			structures:chest_init(p, nil, "Ancient Chest", chest_items)
		end
	end
})
