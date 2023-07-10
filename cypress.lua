
---------------------------------------------
-------------MAPGENS
---------------------------------------------
minetest.register_biome({
    name = "cypress",
    node_top = "variety:japanese_dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 4,
		node_riverbed = "default:sand",
		depth_riverbed = 3,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 1,
		heat_point = 50,
		humidity_point = 50,
})

minetest.register_decoration({
    name = "variety:cypress_1",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"cypress"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/cypress_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:cypress_2",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"cypress"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/cypress_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:cypress_3",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"cypress"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/cypress_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:cypress_bush_1",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.005365,
    biomes = {"cypress"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/cypress_bush_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:cypress_log_1",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.005365,
    biomes = {"cypress"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/cypress_log_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.25,
	biomes = {"cypress"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.15,
	biomes = {"cypress"},
	decoration = {
		"flowers:rose", "flowers:dandelion_white",
		"flowers:tulip", "flowers:chrysanthemum_green",
		"flowers:viola", "flowers:dandelion_yellow",
		"flowers:geranium", "flowers:mushroom_brown",
	}
})


---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("baobab_tree", "wood", "baobab:baobab_tree", {
		description = "Baobab Tree",
	tiles = {"baobab_tree_top.png", "baobab_tree_top.png",
		"baobab_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("baobab_wood", "wood", "baobab:baobab_wood", {
		description = "Baobab Wood",
	tiles = {"baobab_wood.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

end

---------------------------------------------
-------------BLOCKS
---------------------------------------------
minetest.register_node("variety:cypress_leaves_1", {
	description = "Cypresse Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"cypress_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:cypress_sapling"}, rarity = 20},
			{items = {"variety:cypress_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:cypress_leaves_2", {
	description = "Cypress Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"cypress_leaves_2.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:cypress_sapling"}, rarity = 20},
			{items = {"variety:cypress_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

	default.register_leafdecay({
		trunks = {"default:aspen_tree"},
		leaves = {"variety:cypress_leaves_1", "variety:cypress_leaves_2"},
		radius = 3,
	})
