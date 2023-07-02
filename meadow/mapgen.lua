

	minetest.register_biome({
		name = "meadow",
		node_top = "meadow:meadow_dirt_with_grass",
		depth_top = 1,
        node_filler = "dorwinion:dorwinion",
        depth_filler = 500,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_dungeon = "dorwinion:dorwinion_brick",
		node_dungeon_alt = "dorwinion:dorwinion_brick_with_moss",
		y_max = 31000,
		y_min = 1,
		heat_point = 60,
		humidity_point = 30,
	})

minetest.register_decoration({
    name = "meadow:meadow_rock",
    deco_type = "schematic",
    place_on = {"meadow:meadow_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("meadow").."/schematics/meadow_rock.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "meadow:meadow_rock_2",
    deco_type = "schematic",
    place_on = {"meadow:meadow_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.000765,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("meadow").."/schematics/meadow_rock_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "meadow:tree_1",
    deco_type = "schematic",
    place_on = {"meadow:meadow_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00765,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("meadow").."/schematics/tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "meadow:tree_2",
    deco_type = "schematic",
    place_on = {"meadow:meadow_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.000565,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("meadow").."/schematics/tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
	deco_type = "simple",
	place_on = {"meadow:meadow_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.06,
	biomes = {"meadow"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"meadow:meadow_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.06,
	biomes = {"meadow"},
	decoration = {
		"flowers:dandelion_white", "flowers:viola",
		"flowers:dandelion_yellow",
		"flowers:chrysanthemum_green",
	}
})
