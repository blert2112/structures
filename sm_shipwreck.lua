
-- medium desert pyramid

-- structure setup
local i = {name="ignore"}
local a = {name="air"}

--local b = {name="structures:deco_stone_eye"}

local j = {name="default:tree"}
local k = {name="default:tree", param2 = 4}
local l = {name="default:junglewood"}
local m = {name="default:wood"}
local n = {name="default:chest"}

local chest_items = {
	{name="default:apple", max = 3},
	{name="farming:bread", max = 3},
	{name="default:steel_ingot", max = 2},
	{name="default:gold_ingot", max = 2},
	{name="default:diamond", max = 1},
	{name="default:pick_steel", max = 1}
}

-- structure definition
structures:add_structure("sm_shipwreck", {
	biomes = {"glacier_ocean", "tundra_ocean", "taiga_ocean", "sandstone_grassland_ocean", "stone_grassland_ocean",
		"coniferous_forest_ocean", "deciduous_forest_ocean", "desert_ocean", "savanna_ocean", "rainforest_ocean"},
	avoid_short = nil,
	avoid_long = nil,
	offset = {x=0, y=-2, z=0},
	schematic = {
		size = {x=15, y=10, z=7},
		data = {
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			-- 1

			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,l,l,l,l,l,l,l,l,l,i,i,
			i,i,i,i,m,m,m,m,m,m,i,m,m,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			-- 2

			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,l,l,l,l,l,l,l,l,l,i,i,
			i,i,i,l,i,i,i,i,i,i,i,i,i,l,i,
			i,i,i,m,i,i,i,i,i,i,i,i,i,m,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			-- 3

			i,i,i,i,l,l,l,l,l,l,l,l,l,l,l,
			i,i,i,l,l,l,l,l,l,l,l,l,l,l,i,
			i,i,l,i,i,i,i,j,i,i,i,i,n,l,i,
			m,m,m,i,i,i,i,j,i,i,i,i,i,m,i,
			i,i,i,i,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,j,i,i,i,i,i,i,i,
			-- 4

			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,l,l,l,l,l,l,l,l,l,i,i,
			i,i,i,l,i,i,i,i,i,i,i,i,i,l,i,
			i,i,i,m,i,i,i,i,i,i,i,i,i,m,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			-- 5

			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,l,l,l,l,l,l,l,l,l,i,i,
			i,i,i,i,m,m,m,m,m,m,i,m,m,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			-- 6

			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,k,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			i,i,i,i,i,i,i,i,i,i,i,i,i,i,i,
			-- 7
		}
	}
})
