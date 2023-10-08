---------------------------------------------
-------------MAPGENS
---------------------------------------------

	minetest.register_biome({
		name = "meadow",
		node_top = "variety:meadow_dirt_with_grass",
		depth_top = 1,
        node_filler = "variety:dorwinion",
        depth_filler = 250,
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
    name = "variety:meadow_rock",
    deco_type = "schematic",
    place_on = {"variety:meadow_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/meadow_rock.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:meadow_rock_2",
    deco_type = "schematic",
    place_on = {"variety:meadow_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.000765,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/meadow_rock_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:meadow_tree_1",
    deco_type = "schematic",
    place_on = {"variety:meadow_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.01565,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/meadow_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "variety:meadow_tree_2",
    deco_type = "schematic",
    place_on = {"variety:meadow_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.01565,
    biomes = {"meadow"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/meadow_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:meadow_dirt_with_grass"},
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
	place_on = {"variety:meadow_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.06,
	biomes = {"meadow"},
	decoration = {
		"flowers:dandelion_white", "flowers:viola",
		"flowers:dandelion_yellow",
		"flowers:chrysanthemum_green",
	}
})

---------------------------------------------
-------------BLOCKS
---------------------------------------------


minetest.register_node("variety:meadow_tree", {
	description = "Meadow Tree",
	tiles = {"meadow_tree_top.png", "meadow_tree_top.png",
		"meadow_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})


minetest.register_node("variety:meadow_wood", {
	description = "Meadow Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"meadow_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("variety:meadow_leaves", {
	description = "Meadow Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"meadow_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:meadow_sapling"}, rarity = 20},
			{items = {"variety:meadow_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

	default.register_leafdecay({
		trunks = {"variety:meadow_tree"},
		leaves = {"variety:meadow_leaves"},
		radius = 3,
	})

	stairs.register_stair_and_slab("meadow_wood", "variety:meadow_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"meadow_wood.png"},
		"Meadow Wood Stair",
		"Meadow Wood Slab",
		default.node_sound_wood_defaults())

minetest.register_node("variety:meadow_dirt_with_grass", {
	description = "Meadow Grass",
	tiles = {"meadow_grass.png", "dorwinion.png",
		{name = "dorwinion.png^meadow_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_dirt_footstep", gain = 0.25},
	}),
})

doors.register_fencegate("variety:gate_meadow", {
	description = "Meadow Wood Fence Gate",
	texture = "meadow_wood_fence.png",
	material = "variety:meadow_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_meadow_wood", {
		description = "Meadow Wood Fence",
		texture = "meadow_wood_fence.png",
		inventory_image = "default_fence_overlay.png^meadow_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^meadow_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:meadow_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_meadow_wood", {
		description = "Meadow Wood Fence Rail",
		texture = "meadow_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^meadow_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^meadow_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:meadow_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

minetest.register_node("variety:meadow_sapling", {
	description = "Meadow Sapling",
	drawtype = "plantlike",
	tiles = {"meadow_trees.png"},
	inventory_image = "meadow_trees.png",
	wield_image = "meadow_trees.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_meadow_tree,
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
			"variety:meadow_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_meadow_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "meadow_tree_" .. math.random(1, 2) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:meadow_sapling", grow_new_meadow_tree, "soil"},
	})
	bonemeal:add_deco({
		{"variety:meadow_dirt_with_grass", {"default:grass_1", "default:grass_2", "default:grass_3", "default:grass_4", "default:grass_5", "flowers:dandelion_white", "flowers:viola", "flowers:dandelion_yellow", "flowers:chrysanthemum_green"}, {}}
	})
end
	default.register_leafdecay({
		trunks = {"variety:meadow_tree"},
		leaves = {"variety:meadow_leaves"},
		radius = 3,
	})
---------------------------------------------
-------------CREATURA/ANIMALIA
---------------------------------------------
if minetest.get_modpath("creatura") then

creatura.register_abm_spawn("animalia:chicken", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 5,
	biomes = chicken_biomes, "meadow",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:cow", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "meadow",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:horse", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "meadow",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})


creatura.register_abm_spawn("animalia:pig", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 2,
	max_group = 3,
	biomes = pig_biomes, "meadow",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:turkey", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "meadow",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:sheep", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 6,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "meadow",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})
end

---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "variety:meadow_wood 4",
	recipe = {
		{"variety:meadow_tree"},
	}
})

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("meadow_tree", "wood", "variety:meadow_tree", {
		description = "Meadow Tree",
	tiles = {"meadow_tree.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("meadow", "wood", "variety:meadow_wood", {
		description = "Meadow Wood",
	tiles = {"meadow_wood.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})
end
