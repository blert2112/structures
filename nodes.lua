
-- deco stones
core.register_node("structures:deco_stone_eye", {
	description = "Sandstone with Eye",
	tiles = {"default_sandstone.png^pyramids_eye.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=3},
	sounds = default.node_sound_stone_defaults()
})

core.register_node("structures:deco_stone_man", {
	description = "Sandstone with Man",
	tiles = {"default_sandstone.png^pyramids_man.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=3},
	sounds = default.node_sound_stone_defaults()
})

core.register_node("structures:deco_stone_sun", {
	description = "Sandstone with Sun",
	tiles = {"default_sandstone.png^pyramids_sun.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=3},
	sounds = default.node_sound_stone_defaults()
})

-- chests
core.register_node("structures:chest1", {
	description = "Ancient Chest",
	tiles = {
		"structures_chest1_tb.png", "structures_chest1_tb.png", "structures_chest1_side.png",
		"structures_chest1_side.png", "structures_chest1_side.png", "structures_chest1_side.png"
	},
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		structures:chest_init(pos, nil, "Ancient Chest", nil)
	end,
	can_dig = function(pos,player)
		return core.get_meta(pos):get_inventory():is_empty("main")
	end
})

core.register_node("structures:sarcophagus1", {
	description = "Ancient Sarcophagus",
	drawtype = "mesh",
	mesh = "structures_sarcophagus.obj",
	selection_box = {
		type = "fixed",
		fixed = {-1.5, -0.5, -0.5, 1.5, 0.5, 0.5},
	},
	collision_box = {
		type = "fixed",
		fixed = {-1.5, -0.5, -0.5, 1.5, 0.5, 0.5},
	},
	tiles = {"structures_sarcophagus1.png", "", "", "","", ""},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		structures:chest_init(pos, nil, "Ancient Sarcophagus", nil)
	end,
	can_dig = function(pos,player)
		return core.get_meta(pos):get_inventory():is_empty("main")
	end
})

-- trap nodes
core.register_node("structures:trap1", {
	description = "Pyramid Sandstone Trap",
	tiles = {"default_sandstone.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=3,not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	drop = ""
})
core.register_node("structures:trap1_marker", {
	description = "Pyramid Sandstone Trap Marker",
	tiles = {"default_sandstone.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=3,not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	drop = ""
})
