

minetest.register_decoration({
    name = "baobab:baobab_tree_1",
    deco_type = "schematic",
    place_on = {"default:dry_dirt_with_dry_grass"},
    place_offset_y = -8,
    sidelen = 16,
    fill_ratio = 0.000665,
    biomes = {"savanna"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("baobab").."/schematics/baobab_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "baobab:baobab_tree_2",
    deco_type = "schematic",
    place_on = {"default:dry_dirt_with_dry_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.000305,
    biomes = {"savanna"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("baobab").."/schematics/baobab_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

