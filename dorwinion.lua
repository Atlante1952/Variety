
---------------------------------------------
-------------MAPGENS
---------------------------------------------
	minetest.register_biome({
		name = "dorwinion",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
        node_filler = "default:dirt",
        depth_filler = 3,
        node_stone = "variety:dorwinion",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_dungeon = "variety:dorwinion_brick",
		node_dungeon_alt = "variety:dorwinion_brick_with_moss",
		y_max = 31000,
		y_min = 4,
		heat_point = 38,
		humidity_point = 38,
	})

minetest.register_decoration({
    name = "variety:dorwinion_tree_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.006265,
    biomes = {"dorwinion"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/dorwinion_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:dorwinion_tree_2",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.006265,
    biomes = {"dorwinion"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/dorwinion_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
    name = "variety:bush_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.015265,
    biomes = {"dorwinion"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/bush_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:dorwinion_tree_3",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.006265,
    biomes = {"dorwinion"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/dorwinion_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:dorwinion_tree_4",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.006265,
    biomes = {"dorwinion"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/dorwinion_tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "variety:aspen_tree",
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
	fill_ratio = 0.3,
	biomes = {"dorwinion"},
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
	biomes = {"dorwinion"},
	decoration = {
		"flowers:rose", "flowers:dandelion_yellow",
		"flowers:dandelion_white", "flowers:chryssanthemum_green",
		"flowers:mushroom_brown",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"dorwinion"},
	decoration = {
		"flowers:mushroom_brown",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.08,
	biomes = {"dorwinion"},
	decoration = {
		"variety:dorwinion_leaves",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"dorwinion"},
	decoration = {
"butterflies:butterfly_white", "butterflies:butterfly_red", "butterflies:butterfly_violet",
	}
})


minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "variety:dorwinion_leaves"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"dorwinion"},
	decoration = {
"variety:dorwinion_glow_leaves",
	}
})

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "variety:dorwinion",
		wherein         = {"default:dirt"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = -50,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
	        biomes = {"dorwinion"},
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	}) 


---------------------------------------------
-------------CREATURA/ANIMALIA
---------------------------------------------
if minetest.get_modpath("creatura") then
creatura.register_abm_spawn("animalia:sheep", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 6,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "dorwinion",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:reindeer", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 6,
	max_group = 8,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "dorwinion",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:horse", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "dorwinion",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:cow", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "dorwinion",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:chicken", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 5,
	biomes = chicken_biomes, "dorwinion",
	nodes = {"group:soil"},
})
end

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("dorwinion_brick", "stone", "variety:dorwinion_brick", {
		description = "Dorwinion Brick",
	tiles = {"dorwinion_brick.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion", "stone", "variety:dorwinion", {
		description = "Dorwinion",
	tiles = {"dorwinion.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_carved", "stone", "variety:dorwinion_carved", {
		description = "Dorwinion Carved",
	tiles = {"dorwinion_carved.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_brick_cracked", "stone", "variety:dorwinion_brick_cracked", {
		description = "Dorwinion Brick Cracked",
	tiles = {"dorwinion_brick_cracked.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_brick_with_flowers", "stone", "variety:dorwinion_brick_with_flowers", {
		description = "Dorwinion Brick With Flowers",
	tiles = {"dorwinion_brick_with_flowers.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("dorwinion_brick_with_moss", "stone", "variety:dorwinion_brick_with_moss", {
		description = "Dorwinion Brick With Moss",
	tiles = {"dorwinion_brick_with_moss.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})
end

---------------------------------------------
-------------BLOCKS
---------------------------------------------
minetest.register_node("variety:dorwinion_brick", {
	description = "Dorwninion Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "variety:dorwinion_brick 4",
	recipe = {
		{"variety:dorwinion", "variety:dorwinion"},
		{"variety:dorwinion", "variety:dorwinion"},
	}
})
minetest.register_node("variety:dorwinion_brick_with_flowers", {
	description = "Dorwninion Brick With Flowers",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick_with_flowers.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "variety:dorwinion_brick_with_flowers 2",
	recipe = {
		{"variety:dorwinion_brick", "flowers:rose"},
		{"variety:dorwinion_brick", "flowers:rose"},
	}
})

minetest.register_node("variety:dorwinion_brick_with_moss", {
	description = "Dorwninion Brick With Moss",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick_with_moss.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "variety:dorwinion_brick_with_moss 3",
	recipe = {
		{"variety:dorwinion_brick", "bucket:bucket_water"},
		{"variety:dorwinion_brick", "variety:dorwinion_brick"},
	}
})

minetest.register_node("variety:dorwinion_carved", {
	description = "Dorwninion Carved",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_carved.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "variety:dorwinion_carved 4",
	recipe = {
		{"variety:dorwinion_brick", "variety:dorwinion_brick_cracked"},
		{"variety:dorwinion_brick_cracked", "variety:dorwinion_brick"},
	}
})

minetest.register_node("variety:dorwinion_brick_cracked", {
	description = "Dorwninion Brick Cracked",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion_brick_cracked.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "variety:dorwinion_brick_cracked 4",
	recipe = {
		{"variety:dorwinion_brick", "variety:dorwinion_brick"},
		{"variety:dorwinion_brick", "variety:dorwinion_brick"},
	}
})

minetest.register_node("variety:dorwinion", {
	description = "Dorwninion",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"dorwinion.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("variety:dorwinion_leaves", {
	description = "Dorwinion Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"dorwinion_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {""}, rarity = 20},
			{items = {"variety:dorwinion_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:dorwinion_glow_leaves", {
	description = "Dorwinion Glowing Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"dorwinion_glow_leaves.png"},
	paramtype = "light",
	light_source = 10,    
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {""}, rarity = 20},
			{items = {"variety:dorwinion_glow_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:dorwinion_sapling", {
	description = "dorwinion Sapling",
	drawtype = "plantlike",
	tiles = {"dorwinion_trees.png"},
	inventory_image = "dorwinion_trees.png",
	wield_image = "dorwinion_trees.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_dorwinion_tree,
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"variety:dorwinion_sapling",
			{x = -1, y = 0, z = -1}, 
			{x = 1, y = 3, z = 1},
			2 
		)

		return itemstack
	end,
})

local function grow_new_dorwinion_tree(pos)
	if not default.can_grow(pos) then
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "dorwinion_tree_" .. math.random(1, 3) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:dorwinion_sapling", grow_new_dorwinion_tree, "soil"},
	})
end


	default.register_leafdecay({
		trunks = {"default:aspen_tree", "default:tree"},
		leaves = {"variety:dorwinion_leaves", "default:aspen_leaves"},
		radius = 3,
	})
---------------------------------------------
-------------WALLS
---------------------------------------------
if minetest.get_modpath("walls") then

walls.register(":walls:dorwinion_brick", "Dorwinion Brick Wall", "dorwinion_brick.png",
		"variety:dorwinion_brick", default.node_sound_stone_defaults())

walls.register(":walls:dorwinion_carved", "Dorwinion Carved Wall", "dorwinion_carved.png",
		"variety:dorwinion_carved", default.node_sound_stone_defaults())

walls.register(":walls:dorwinion_brick_with_moss", "Dorwinion Brick With Moss Wall", "dorwinion_brick_with_moss.png",
		"variety:dorwinion_brick_with_moss", default.node_sound_stone_defaults())
end

---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "walls:dorwinion_brick 6",
	recipe = {
		{"variety:dorwinion_brick", "variety:dorwinion_brick", "variety:dorwinion_brick"},
		{"variety:dorwinion_brick", "variety:dorwinion_brick", "variety:dorwinion_brick"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:dorwinion_carved 6",
	recipe = {
		{"variety:dorwinion_carved", "variety:dorwinion_carved", "variety:dorwinion_carved"},
		{"variety:dorwinion_carved", "variety:dorwinion_carved", "variety:dorwinion_carved"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:dorwinion_brick_with_moss 6",
	recipe = {
		{"variety:dorwinion_brick_with_moss", "variety:dorwinion_brick_with_moss", "variety:dorwinion_brick_with_moss"},
		{"variety:dorwinion_brick_with_moss", "variety:dorwinion_brick_with_moss", "variety:dorwinion_brick_with_moss"},
		{"", "", ""},
	}
})


