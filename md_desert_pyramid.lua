
-- medium desert pyramid

-- structure setup
local i = {name="ignore"}
local a = {name="air"}

local b = {name="structures:deco_stone_eye"}
local c = {name="structures:deco_stone_man"}
local d = {name="structures:deco_stone_sun"}
local e = {name="structures:trap1"}
local f = {name="structures:trap1_marker"}
local g = {name="structures:chest1"}
local h = {name="structures:sarcophagus1"}

local j = {name="default:sandstone"}
local k = {name="default:desert_stone"}
local l = {name="stairs:slab_desert_stone"}
local m = {name="default:goldblock"}

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
	core.get_content_id("default:sandstone")
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
structures:add_structure("md_desert_pyramid", {
	biomes = {"desert"},
	avoid_short = {
		distance = 20,
		nodes = avoid_short_nodes
	},
	avoid_long = avoid_long_nodes,
	offset = {x=0, y=0, z=0},
	schematic = {
		size = {x=19, y=10, z=19},
		data = {
			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,a,j,j,j,j,j,j,j,j,i,
			i,i,i,i,i,i,i,i,j,i,j,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,j,j,j,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,a,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,a,j,j,j,j,j,j,j,i,i,
			i,i,i,i,i,i,i,i,j,j,j,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,a,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,a,j,j,j,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,k,l,a,j,a,j,a,l,k,j,j,j,j,i,
			i,i,j,j,j,b,a,a,j,a,j,a,a,b,j,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,j,j,j,j,j,j,j,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,k,k,l,a,j,a,j,a,l,k,k,j,j,j,i,
			i,i,j,j,b,g,a,a,j,a,j,a,a,g,b,j,j,i,i,
			i,i,i,j,j,a,a,a,j,j,j,a,a,a,j,j,i,i,i,
			i,i,i,i,j,d,j,j,j,j,j,j,j,d,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,l,l,l,a,j,a,j,a,l,l,l,j,j,j,i,
			i,i,j,j,a,a,a,a,j,a,j,a,a,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,j,j,j,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,a,a,j,j,j,a,a,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,j,j,j,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,a,a,c,a,c,a,a,a,a,j,j,j,i,
			i,i,j,j,a,a,a,a,b,a,b,a,a,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,j,d,j,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,a,a,j,j,j,a,a,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,j,j,j,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,j,j,j,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,e,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,a,a,a,a,a,a,a,a,a,j,j,j,i,
			i,i,j,j,a,a,a,a,a,a,a,a,a,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,a,a,a,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,a,a,a,a,a,a,a,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,j,m,j,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,j,j,j,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,j,j,j,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,f,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,a,a,a,a,a,a,a,a,a,j,j,j,i,
			i,i,j,j,a,a,a,a,a,a,a,a,a,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,a,a,a,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,a,a,a,a,a,a,a,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,m,j,m,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,j,j,j,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,j,j,j,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,j,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,a,a,a,a,a,a,a,a,a,j,j,j,i,
			i,i,j,j,a,a,a,a,a,a,a,a,a,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,a,a,a,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,a,a,a,a,a,a,a,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,j,m,j,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,j,j,j,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,j,j,j,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,j,l,l,l,l,l,j,a,a,j,j,j,i,
			i,i,j,j,a,a,c,a,a,a,a,a,c,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,a,a,a,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,a,a,a,a,a,a,a,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,j,j,j,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,j,j,j,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,l,k,k,k,k,k,l,a,a,j,j,j,i,
			i,i,j,j,a,a,a,a,a,a,a,a,a,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,a,a,a,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,b,a,a,a,a,a,b,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,j,j,j,j,j,j,j,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,l,k,k,k,k,k,l,a,a,j,j,j,i,
			i,i,j,j,a,a,a,a,a,h,a,a,a,a,a,j,j,i,i,
			i,i,i,j,j,a,a,a,a,a,a,a,a,a,j,j,i,i,i,
			i,i,i,i,j,j,j,j,j,d,j,j,j,j,j,i,i,i,i,
			i,i,i,i,i,j,j,j,j,j,j,j,j,j,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,a,a,j,j,j,j,j,j,j,a,a,j,j,j,i,
			i,i,j,j,a,a,j,j,j,j,j,j,j,a,a,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,j,j,j,j,j,j,j,j,j,j,j,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,
			i,i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,

			j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,j,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
		}
	}
})

-- trap ABM
core.register_abm({
	nodenames = {"structures:trap1"},
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
			local near = core.find_node_near(pos, 1, {"structures:trap1_marker"})
			if near then
				-- get direction
				local dir = vector.direction(pos, near)
				-- block exit
				local p = {x=pos.x-(dir.x*4), y=pos.y+1, z=pos.z-(dir.z*4)}
				core.sound_play("tnt_explode", {
					pos = p,
					gain = 0.50,
					max_hear_distance = 14
				})
				core.set_node(p, {name="default:sandstone"})
				p = {x=p.x, y=p.y+1, z=p.z}
				core.set_node(p, {name="default:sandstone"})
				p = {x=pos.x-(dir.x*5), y=pos.y+1, z=pos.z-(dir.z*5)}
				core.set_node(p, {name="default:sandstone"})
				p = {x=p.x, y=p.y+1, z=p.z}
				core.set_node(p, {name="default:sandstone"})
				-- set fires
				p = {x=pos.x+(dir.x*3), y=pos.y+3, z=pos.z+(dir.z*3)}
				if dir.x == 0 then
					p = {x=p.x+3, y=p.y, z=p.z}
				else
					p = {x=p.x, y=p.y, z=p.z+3}
				end
				core.set_node(p, {name="fire:permanent_flame"})
				if dir.x == 0 then
					p = {x=p.x-6, y=p.y, z=p.z}
				else
					p = {x=p.x, y=p.y, z=p.z-6}
				end
				core.set_node(p, {name="fire:permanent_flame"})
				-- fill chests
				p = {x=pos.x-(dir.x*3), y=pos.y+2, z=pos.z-(dir.z*3)}
				if dir.x == 0 then
					p = {x=p.x+4, y=p.y, z=p.z}
				else
					p = {x=p.x, y=p.y, z=p.z+4}
				end
				structures:chest_init(p, nil, "Ancient Chest", chest_items)
				if dir.x == 0 then
					p = {x=p.x-8, y=p.y, z=p.z}
				else
					p = {x=p.x, y=p.y, z=p.z-8}
				end
				structures:chest_init(p, nil, "Ancient Chest", chest_items)
				-- fill sarcophagus
				p = {x=pos.x+(dir.x*5), y=pos.y+2, z=pos.z+(dir.z*5)}
				structures:chest_init(p, nil, "Ancient Sarcophagus", chest_items)
				-- replace trap nodes
				core.set_node(pos, {name="default:sandstone"})
				core.set_node(near, {name="default:sandstone"})
			end
		end
	end
})
