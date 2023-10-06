---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "variety:redwood 4",
	recipe = {
		{"variety:redwood_tree"},
	}
})

minetest.register_craft({
	output = "variety:fence_rail_redwood_wood 16",
	recipe = {
		{"variety:redwood", "variety:redwood", ""},
		{"", "", ""},
		{"variety:redwood", "variety:redwood", ""},
	}
})

minetest.register_craft({
	output = "variety:fence_redwood_wood 4",
	recipe = {
		{"variety:redwood", "default:stick", "variety:redwood"},
		{"variety:redwood", "default:stick", "variety:redwood"},
	}
})

minetest.register_craft({
	output = "variety:gate_redwood_closed",
	recipe = {
		{"default:stick", "variety:redwood", "default:stick"},
		{"default:stick", "variety:redwood", "default:stick"},
	}
})

---------------------------------------------
-------------MAPGENS
---------------------------------------------
minetest.register_biome({
    name = "redwood",
    node_top = "variety:redwood_dirt_with_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 4,
		node_riverbed = "default:sand",
		depth_riverbed = 3,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 1,
		heat_point = 60,
		humidity_point = 75,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"redwood"},
	decoration = {
		"flowers:mushroom_brown",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:redwood_dirt_with_grass"},
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
	place_on = {"variety:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"redwood"},
	decoration = {
		"default:junglegrass",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"redwood"},
	decoration = {
		"default:dry_shrub",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:redwood_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.3,
	biomes = {"redwood"},
	decoration = {
		"variety:grass_4", "variety:grass_5",
		"variety:grass_2", "variety:grass_3",
		"variety:grass_1",

	}
})

minetest.register_decoration({
    name = "variety:rock_1",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/rock_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:redwood_tree_1",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/redwood_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:redwood_tree_2",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/redwood_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:redwood_tree_3",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/redwood_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:redwood_tree_4",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/redwood_tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:redwood_tree_5",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/redwood_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
    name = "variety:stone",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 0.000565,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/stone.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:log",
    deco_type = "schematic",
	place_on = {"variety:redwood_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.009365,
    biomes = {"redwood"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/log.mts",
	flags = "force_placement",
	rotation = "random",
})

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("redwood_tree", "tree", "variety:redwood_tree", {
		description = "Redwood Tree",
	tiles = {"redwood_tree.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("redwood", "stone", "variety:redwood", {
		description = "Redwood",
	tiles = {"redwood.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})
end
---------------------------------------------
-------------BLOCKS
---------------------------------------------
minetest.register_node("variety:redwood_dirt_with_grass", {
	description = "Redwood Dirt With Grass",
	tiles = {"redwood_dirt_with_grass.png", "default_dirt.png",
		{name = "default_dirt.png^redwood_dirt_with_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("variety:redwood_tree", {
	description = "Redwood Tree",
	tiles = {"redwood_tree_top.png", "redwood_tree_top.png",
		"redwood_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("variety:redwood", {
	description = "Redwood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"redwood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("variety:redwood_leaves", {
	description = "Redwood Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"redwood_leaves1.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:redwood_sapling"}, rarity = 20},
			{items = {"variety:redwood_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

	default.register_leafdecay({
		trunks = {"variety:redwood_tree"},
		leaves = {"variety:redwood_leaves"},
		radius = 3,
	})

minetest.register_node("variety:redwood_sapling", {
	description = "Redwood Sapling",
	drawtype = "plantlike",
	tiles = {"redwood_trees.png"},
	inventory_image = "redwood_trees.png",
	wield_image = "redwood_trees.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_redwood_tree,
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
			"variety:redwood_sapling",
			{x = -1, y = 0, z = -1}, 
			{x = 1, y = 3, z = 1},
			2 
		)

		return itemstack
	end,
})

local function grow_new_redwood_tree(pos)
	if not default.can_grow(pos) then
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "redwood_tree_" .. math.random(1, 5) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:redwood_sapling", grow_new_redwood_tree, "soil"},
	})
	bonemeal:add_deco({
		{"variety:redwood_dirt_with_grass", {"variety:grass_1", "variety:grass_2", "variety:grass_3", "variety:grass_4", "variety:grass_5", "default:fern_1", "default:fern_2", "default:fern_3", "default:junglegrass", "default:dry_shrub"}, {}}
	})
end



	stairs.register_stair_and_slab("redwood", "variety:redwood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"redwood.png"},
		"Redwood Wood Stair",
		"Redwood Wood Slab",
		default.node_sound_wood_defaults())


doors.register_fencegate("variety:gate_redwood", {
	description = "Redwood Wood Fence Gate",
	texture = "redwood_wood_fence.png",
	material = "variety:redwood_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_redwood_wood", {
		description = "Redwood Wood Fence",
		texture = "redwood_wood_fence.png",
		inventory_image = "default_fence_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:redwood_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_redwood_wood", {
		description = "Redwood Wood Fence Rail",
		texture = "redwood_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:redwood_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

minetest.register_node("variety:grass_1", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"redwood_grass_1.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "redwood_grass_3.png",
	wield_image = "redwood_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1,
		normal_grass = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("variety:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("variety:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("variety:grass_" .. i, {
		description = "Redwood Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"redwood_grass_" .. i .. ".png"},
		inventory_image = "redwood_grass_" .. i .. ".png",
		wield_image = "redwood_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		drop = "variety:grass_1",
		groups = {snappy = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory = 1, grass = 1,
			normal_grass = 1, flammable = 1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end

---------------------------------------------
-------------CREATURA/ANIMALIA
---------------------------------------------
if minetest.get_modpath("creatura") then

creatura.register_abm_spawn("animalia:reindeer", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 6,
	max_group = 8,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "redwood",
	nodes = {"group:soil"},
})


creatura.register_abm_spawn("animalia:fox", {
	chance = predator_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 1,
	max_group = 2,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "redwood",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:horse", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "redwood",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})



creatura.register_abm_spawn("animalia:turkey", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "redwood",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:wolf", {
	chance = predator_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 2,
	max_group = 3,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "redwood",
	nodes = {"group:soil"},
})
end
