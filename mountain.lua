---------------------------------------------
-------------MAPGENS
---------------------------------------------
	minetest.register_biome({
		name = "mountain",
        node_dust = "default:snow",
		node_top = "default:snowblock",
		depth_top = 3,
		node_filler = "default:ice",
		depth_filler = 50,
		node_riverbed = "default:ice",
		depth_riverbed = 2,
		node_dungeon = "default:ice",
		node_dungeon_alt = "default:snowblock",
		y_max = 31000,
		y_min = 40,
		heat_point = 2,
		humidity_point = 43,
	})

minetest.register_decoration({
    name = "variety:ice_mountain_1",
    deco_type = "schematic",
    place_on = {"default:snowblock", "default:snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003165,
    biomes = {"mountain"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:ice_mountain_2",
    deco_type = "schematic",
    place_on = {"default:snowblock", "default:snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003165,
    biomes = {"mountain"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})
