---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "variety:clay_1 4",
	recipe = {
		{"","variety:clay_2", ""},
		{"variety:clay_2", "variety:clay_2", "variety:clay_2"},
		{"","variety:clay_2", ""},
	}
})

minetest.register_craft({
	output = "variety:clay_2 4",
	recipe = {
		{"default:clay", "default:clay"},
		{"default:clay", "default:clay"},
	}
})

minetest.register_craft({
	output = "variety:clay_3 4",
	recipe = {
		{"variety:clay_1","variety:clay_1"},
		{"variety:clay_1", "variety:clay_1"},
	}
})

minetest.register_craft({
	output = "variety:clay_4 4",
	recipe = {
		{"variety:clay_1","", "variety:clay_1"},
		{"", "variety:clay_1", ""},
		{"variety:clay_1","", "variety:clay_1"},
	}
})

minetest.register_craft({
	output = "variety:clay_5 6",
	recipe = {
		{"variety:clay_3","variety:clay_3"},
		{"variety:clay_3", "variety:clay_3"},
	}
})

minetest.register_craft({
	output = "variety:clay_6 8",
	recipe = {
		{"variety:clay_5","variety:clay_5"},
		{"variety:clay_5", "variety:clay_5"},
	}
})


minetest.register_craft({
	output = "variety:terracotta_2 4",
	recipe = {
		{"","variety:terracotta_1", ""},
		{"variety:terracotta_1", "variety:terracotta_1", "variety:terracotta_1"},
		{"","variety:terracotta_1", ""},
	}
})

minetest.register_craft({
	output = "variety:terracotta_3 4",
	recipe = {
		{"variety:terracotta_1","variety:terracotta_1"},
		{"variety:terracotta_1", "variety:terracotta_1"},
	}
})

minetest.register_craft({
	output = "variety:terracotta_4 4",
	recipe = {
		{"variety:terracotta_1","", "variety:terracotta_1"},
		{"", "variety:terracotta_1", ""},
		{"variety:terracotta_1","", "variety:terracotta_1"},
	}
})

minetest.register_craft({
	output = "variety:terracotta_5 6",
	recipe = {
		{"variety:terracotta_3","variety:terracotta_3"},
		{"variety:terracotta_3", "variety:terracotta_3"},
	}
})

minetest.register_craft({
	output = "variety:terracotta_6 8",
	recipe = {
		{"variety:terracotta_5","variety:terracotta_5"},
		{"variety:terracotta_5", "variety:terracotta_5"},
	}
})


minetest.register_craft({
	output = "walls:clay_5 6",
	recipe = {
		{"variety:clay_5", "variety:clay_5", "variety:clay_5"},
		{"variety:clay_5", "variety:clay_5", "variety:clay_5"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:clay_3 6",
	recipe = {
		{"variety:clay_3", "variety:clay_3", "variety:clay_3"},
		{"variety:clay_3", "variety:clay_3", "variety:clay_3"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:terracotta_5 6",
	recipe = {
		{"variety:terracotta_5", "variety:terracotta_5", "variety:terracotta_5"},
		{"variety:terracotta_5", "variety:terracotta_5", "variety:terracotta_5"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:terracotta_4 6",
	recipe = {
		{"variety:terracotta_4", "variety:terracotta_4", "variety:terracotta_4"},
		{"variety:terracotta_4", "variety:terracotta_4", "variety:terracotta_4"},
		{"", "", ""},
	}
})

---------------------------------------------
-------------MAPGENS
---------------------------------------------
minetest.register_biome({
    name = "terracotta",
    node_top = "variety:terracotta_1",
    depth_top = 50,
    node_filler = "variety:terracotta_1",
    depth_filler = 25,
		node_riverbed = "default:desert_sand",
		depth_riverbed = 3,
		node_dungeon = "variety:terracotta_1",
		node_dungeon_alt = "variety:terracotta_1",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
    heat_point = 98,
    humidity_point = 2,
})

minetest.register_decoration({
    name = "variety:terracotta_1",
    deco_type = "schematic",
    place_on = {"variety:terracotta_1"},
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
	place_on = {"variety:terracotta_1"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"terracotta"},
	decoration = {
        "default:dry_shrub",
	}
})

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("terracotta_1", "stone", "variety:terracotta_1", {
		description = "Terracotta",
	tiles = {"terracotta_1.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("terracotta_2", "stone", "variety:terracotta_2", {
		description = "Terracotta",
	tiles = {"terracotta_2.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("terracotta_3", "stone", "variety:terracotta_3", {
		description = "Terracotta Brick",
	tiles = {"terracotta_3.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("terracotta_4", "stone", "variety:terracotta_4", {
		description = "Terracotta",
	tiles = {"terracotta_4.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("terracotta_5", "stone", "variety:terracotta_5", {
		description = "Terracotta Brick",
	tiles = {"terracotta_5.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("terracotta_6", "stone", "variety:terracotta_6", {
		description = "City Terracotta",
	tiles = {"terracotta_6.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("clay_1", "stone", "variety:clay_1", {
		description = "Clay",
	tiles = {"clay_1.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("clay_2", "stone", "variety:clay_2", {
		description = "Clay Block",
	tiles = {"clay_2.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("clay_3", "stone", "variety:clay_3", {
		description = "Clay",
	tiles = {"clay_3.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("clay_4", "stone", "variety:clay_4", {
		description = "City Clay",
	tiles = {"clay_4.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("clay_5", "stone", "variety:clay_5", {
		description = "Small Clay Brick",
	tiles = {"clay_5.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("clay_6", "stone", "variety:clay_6", {
		description = "Clay Brick",
	tiles = {"clay_6.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})
end

---------------------------------------------
-------------BLOCKS
---------------------------------------------
minetest.register_node("variety:clay_1", {
	description = "Clay",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"clay_1.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:clay_2", {
	description = "Clay Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"clay_2.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:clay_3", {
	description = "Clay",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"clay_3.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:clay_4", {
	description = "City Clay",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"clay_4.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:clay_5", {
	description = "Small Clay Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"clay_5.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:clay_6", {
	description = "Clay Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"clay_6.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("variety:terracotta_1", {
	description = "Terracotta",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terracotta_1.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:terracotta_2", {
	description = "Terracotta",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terracotta_2.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:terracotta_3", {
	description = "Terracotta Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terracotta_3.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:terracotta_4", {
	description = "Terracotta",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terracotta_4.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:terracotta_5", {
	description = "Terracotta Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terracotta_5.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("variety:terracotta_6", {
	description = "City Terracotta",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terracotta_6.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})


---------------------------------------------
-------------WALLS
---------------------------------------------
if minetest.get_modpath("walls") then
walls.register(":walls:clay_5", "Small Clay Brick Wall", "clay_5.png",
		"variety:clay_5", default.node_sound_stone_defaults())

walls.register(":walls:clay_3", "Clay Wall", "clay_3.png",
		"variety:clay_3", default.node_sound_stone_defaults())

walls.register(":walls:terracotta_5", "Terracotta Brick Wall", "terracotta_5.png",
		"variety:terracotta_5", default.node_sound_stone_defaults())

walls.register(":walls:terracotta_4", "Terracotta Wall", "terracotta_4.png",
		"variety:terracotta_4", default.node_sound_stone_defaults())
end


