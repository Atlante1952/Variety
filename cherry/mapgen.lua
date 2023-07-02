

	minetest.register_biome({
		name = "cherry",
		node_top = "cherry:cherry_dirt_with_grass",
		depth_top = 1,
        node_filler = "default:stone",
        depth_filler = 150,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_dungeon = "default:stone_brick",
		node_dungeon_alt = "default:cobblestone",
		y_max = 31000,
		y_min = 1,
		heat_point = 40,
		humidity_point = 45,
	})


minetest.register_decoration({
	deco_type = "simple",
	place_on = {"cherry:cherry_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.06,
	biomes = {"cherry"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"cherry:cherry_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.06,
	biomes = {"cherry"},
	decoration = {
		"flowers:dandelion_white", "flowers:viola",
		"flowers:dandelion_yellow", "flowers:rose",
		"flowers:chrysanthemum_green", "flowers:tulip",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"cherry:cherry_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.56,
	biomes = {"cherry"},
	decoration = {
		"cherry:cherry_leaves_on_the_ground",
	}
})



minetest.register_decoration({
    name = "cherry:cherry_tree_1",
    deco_type = "schematic",
    place_on = {"cherry:cherry_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.007265,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("cherry").."/schematics/cherry_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "cherry:cherry_tree_2",
    deco_type = "schematic",
    place_on = {"cherry:cherry_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002365,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("cherry").."/schematics/cherry_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "cherry:cherry_bush",
    deco_type = "schematic",
    place_on = {"cherry:cherry_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("cherry").."/schematics/cherry_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "cherry:cherry_log",
    deco_type = "schematic",
    place_on = {"cherry:cherry_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("cherry").."/schematics/cherry_log.mts",
	flags = "force_placement",
	rotation = "random",
})

