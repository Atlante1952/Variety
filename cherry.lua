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
	biomes = animalia.registered_biome_groups["grassland"].biomes, "japanese_forest",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:reindeer", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 6,
	max_group = 8,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "japanese_forest",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:horse", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "japanese_forest",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:cow", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "japanese_forest",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:chicken", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 5,
	biomes = chicken_biomes, "japanese_forest",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:pig", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 2,
	max_group = 3,
	biomes = pig_biomes, "japanese_forest",
	nodes = {"group:soil"},
})
end

---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "variety:cherry_wood 4",
	recipe = {
		{"variety:cherry_tree"},
	}
})
---------------------------------------------
-------------MAPGENS
---------------------------------------------
	minetest.register_biome({
		name = "cherry",
		node_top = "variety:cherry_dirt_with_grass",
		depth_top = 1,
        node_filler = "default:dirt",
        depth_filler = 3,
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
	place_on = {"variety:cherry_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"cherry"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:cherry_dirt_with_grass"},
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
	place_on = {"variety:cherry_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.56,
	biomes = {"cherry"},
	decoration = {
		"variety:cherry_leaves_on_the_ground",
	}
})

minetest.register_decoration({
    name = "variety:cherry_tree_1",
    deco_type = "schematic",
    place_on = {"variety:cherry_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.009265,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/cherry_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:cherry_tree_2",
    deco_type = "schematic",
    place_on = {"variety:cherry_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001365,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/cherry_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:cherry_bush",
    deco_type = "schematic",
    place_on = {"variety:cherry_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.004265,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/cherry_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:cherry_log",
    deco_type = "schematic",
    place_on = {"variety:cherry_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"cherry"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/cherry_log.mts",
	flags = "force_placement",
	rotation = "random",
})

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("cherry_wood", "wood", "variety:cherry_wood", {
		description = "Cherry Wood",
		tiles = {"cherry_wood.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("cherry_tree", "wood", "variety:cherry_tree", {
		description = "Cherry Tree",
	tiles = {"cherry_tree_top.png", "cherry_tree_top.png",
		"cherry_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})
end

---------------------------------------------
-------------BLOCKS
---------------------------------------------
minetest.register_node("variety:cherry_leaves", {
	description = "Cherry Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"cherry_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:cherry_sapling"}, rarity = 20},
			{items = {"variety:cherry_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("variety:cherry_dirt_with_grass", {
	description = "Cherry Grass",
	tiles = {"cherry_grass.png", "default_dirt.png",
		{name = "default_dirt.png^cherry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_dirt_footstep", gain = 0.25},
	}),
})

minetest.register_node("variety:cherry_tree", {
	description = "Cherry Tree",
	tiles = {"cherry_tree_top.png", "cherry_tree_top.png",
		"cherry_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("variety:cherry_wood", {
	description = "Cherry Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"cherry_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("variety:cherry_sapling", {
	description = "cherry Sapling",
	drawtype = "plantlike",
	tiles = {"cherry_trees.png"},
	inventory_image = "cherry_trees.png",
	wield_image = "cherry_trees.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_cherry_tree,
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
			"variety:cherry_sapling",
			{x = -1, y = 0, z = -1}, 
			{x = 1, y = 3, z = 1},
			2 
		)

		return itemstack
	end,
})

local function grow_new_cherry_tree(pos)
	if not default.can_grow(pos) then
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "cherry_tree_" .. math.random(1, 2) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:cherry_sapling", grow_new_cherry_tree, "soil"},
	})
end

minetest.register_node("variety:cherry_leaves_on_the_ground", {
	description = "Cherry Leaves on the ground",
	drawtype = "signlike",
	waving = 1,
	tiles = {"cherry_petals.png"},
	inventory_image = "cherry_petals.png",
	wield_image = "cherry_petals.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, oddly_breakable_by_hand=3, 
flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type="wallmounted",
		wall_top = {-0.5, 0.49, -0.5, 0.5, 0.5, 0.5},
		wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.49, 0.5},
		wall_side = {-0.5, -0.5, -0.5, -0.49, 0.5, 0.5},
	},
})
	default.register_leafdecay({
		trunks = {"variety:cherry_tree"},
		leaves = {"variety:cherry_leaves"},
		radius = 3,
	})


	stairs.register_stair_and_slab("cherry_wood", "variety:cherry_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"cherry_wood.png"},
		"cherry Wood Stair",
		"cherry Wood Slab",
		default.node_sound_wood_defaults())


doors.register_fencegate("variety:gate_cherry", {
	description = "Cherry Wood Fence Gate",
	texture = "cherry_wood_fence.png",
	material = "variety:cherry_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_cherry_wood", {
		description = "cherry Wood Fence",
		texture = "cherry_wood_fence.png",
		inventory_image = "default_fence_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:cherry_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_cherry_wood", {
		description = "Cherry Wood Fence Rail",
		texture = "cherry_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:cherry_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})
