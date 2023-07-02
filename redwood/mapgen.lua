minetest.register_biome({
    name = "redwood",
    node_top = "redwood:redwood_dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 4,
		node_riverbed = "default:sand",
		depth_riverbed = 3,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
		heat_point = 60,
		humidity_point = 75,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"redwood:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"redwood"},
	decoration = {
		"flowers:mushroom_brown",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"redwood:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"redwood"},
	decoration = {
          "default:fern_3", "default:fern_2",
 "default:fern_1",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"redwood:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"redwood"},
	decoration = {
		"default:junglegrass",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"redwood:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"redwood"},
	decoration = {
		"default:dry_shrub",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"redwood:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.3,
	biomes = {"redwood"},
	decoration = {
		"default:grass_4", "default:grass_5",
		"default:grass_2", "default:grass_3",
		"default:grass_1",

	}
})

minetest.register_decoration({
    name = "redwood:rock_1",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/rock_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "redwood:tree_1",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.003365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "redwood:tree_2",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.003365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "redwood:tree_3",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.003365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "redwood:tree_4",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.003365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "redwood:tree_5",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.003365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
    name = "redwood:stone",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 0.000565,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/stone.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "redwood:log",
    deco_type = "schematic",
	place_on = {"redwood:redwood_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("redwood").."/schematics/log.mts",
	flags = "force_placement",
	rotation = "random",
})
