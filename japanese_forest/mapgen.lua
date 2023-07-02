minetest.register_biome({
    name = "japanese_forest",
    node_top = "japanese_forest:japanese_dirt_with_grass",
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
		heat_point = 58,
		humidity_point = 62,
})

minetest.register_decoration({
    name = "japanese_forest:japanese_tree_1",
    deco_type = "schematic",
    place_on = {"japanese_forest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japanese_forest").."/schematics/japanese_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "japanese_forest:japanese_tree_2",
    deco_type = "schematic",
    place_on = {"japanese_forest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japanese_forest").."/schematics/japanese_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "japanese_forest:japanese_tree_3",
    deco_type = "schematic",
    place_on = {"japanese_forest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japanese_forest").."/schematics/japanese_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "japanese_forest:bamboo",
    deco_type = "schematic",
    place_on = {"japanese_forest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.027265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "japanese_forest:rock_1",
    deco_type = "schematic",
    place_on = {"japanese_forest:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.010265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("japanese_forest").."/schematics/rock_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"japanese_forest:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.5,
	biomes = {"japanese_forest"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
    name = "japanese_forest:japanese_bush",
    deco_type = "schematic",
    place_on = {"japanese_forest:japanese_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.005265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("japanese_forest").."/schematics/japanese_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "japanese_forest:japanese_log",
    deco_type = "schematic",
    place_on = {"japanese_forest:japanese_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.005265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("japanese_forest").."/schematics/japanese_log.mts",
	flags = "force_placement",
	rotation = "random",
})



