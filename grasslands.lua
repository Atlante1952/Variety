---------------------------------------------
-------------MAPGENS
---------------------------------------------

minetest.register_decoration({
    name = "variety:grassland_tree_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.001465,
    biomes = {"grassland"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/grasssland_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:grassland_bush_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.015365,
    biomes = {"grassland"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/grasssland_bush_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:grassland_bush_2",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = -5,
    sidelen = 16,
    fill_ratio = 0.015365,
    biomes = {"grassland"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/grasssland_bush_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:boulder1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.0015565,
    biomes = {"grassland"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/boulder1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:boulder2",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.0015565,
    biomes = {"grassland"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/boulder2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:aspen_tree_g",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"dorwinion"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("default").."/schematics/aspen_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.2,
	biomes = {"grassland"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"grassland"},
	decoration = {
		"flowers:rose", "flowers:dandelion_white",
		"flowers:tulip", "flowers:chrysanthemum_green",
		"flowers:viola", "flowers:dandelion_yellow",
		"flowers:geranium", "flowers:mushroom_brown",
	}
})


