minetest.register_biome({
    name = "terracotta",
    node_top = "terracotta:terracotta_1",
    depth_top = 50,
    node_filler = "terracotta:terracotta_1",
    depth_filler = 25,
		node_riverbed = "default:desert_sand",
		depth_riverbed = 3,
		node_dungeon = "terracotta:terracotta_1",
		node_dungeon_alt = "terracotta:terracotta_1",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
    heat_point = 98,
    humidity_point = 2,
})

minetest.register_decoration({
    name = "terracotta:terracotta_1",
    deco_type = "schematic",
    place_on = {"terracotta:terracotta_1"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.010265,
    biomes = {"terracotta"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("default").."/schematics/large_cactus.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
	deco_type = "simple",
	place_on = {"terracotta:terracotta_1"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"terracotta"},
	decoration = {
        "default:dry_shrub",
	}
})
