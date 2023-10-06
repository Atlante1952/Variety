---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "variety:japanese_trapdoor",
	recipe = {
		{"variety:fiber_bamboo", "variety:japanese_wood", "variety:fiber_bamboo"},
		{"variety:japanese_wood", "variety:fiber_bamboo", "variety:japanese_wood"},
	}
})

minetest.register_craft({
	output = "variety:japanese_tatami 2",
	recipe = {
		{"farming:string", "variety:fiber_bamboo"},
		{"variety:japanese_wood", "variety:japanese_wood"},
	}
})

minetest.register_craft({
	output = "variety:tatami_simple 2",
	recipe = {
		{"variety:fiber_bamboo", "variety:fiber_bamboo"},
		{"variety:japanese_wood", "variety:japanese_wood"},
	}
})

minetest.register_craft({
	output = "variety:japanese_lamp 2",
	recipe = {
		{"variety:fiber_bamboo", "variety:japanese_wood"},
		{"default:paper", "default:torch"},
	}
})

---------------------------------------------
-------------MAPGENS
---------------------------------------------

minetest.register_biome({
    name = "japanese_forest",
    node_top = "variety:japanese_dirt_with_grass",
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
		heat_point = 58,
		humidity_point = 62,
})

minetest.register_decoration({
    name = "variety:japanese_tree_1",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/japanese_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:japanese_tree_2",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/japanese_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:japanese_tree_3",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.011365,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/japanese_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "variety:bamboo",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.027265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/bamboo_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:rock_1",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.010265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/rock_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:japanese_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.5,
	biomes = {"japanese_forest"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

minetest.register_decoration({
    name = "variety:japanese_bush",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.005265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/japanese_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:japanese_log",
    deco_type = "schematic",
    place_on = {"variety:japanese_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.005265,
    biomes = {"japanese_forest"},
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath("variety").."/schematics/japanese_log.mts",
	flags = "force_placement",
	rotation = "random",
})


---------------------------------------------
-------------CREATURA/ANIMALIA
---------------------------------------------

if minetest.get_modpath("creatura") then

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

creatura.register_abm_spawn("animalia:pig", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 2,
	max_group = 3,
	biomes = pig_biomes, "japanese_forest",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:turkey", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "japanese_forest",
	nodes = {"group:soil"},
})

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
end

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("japanese_wood", "wood", "variety:japanese_wood", {
		description = "Japanese Wood",
		tiles = {"japanese_wood.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("tatami_simple", "wood", "variety:tatami_simple", {
		description = "Tatami simple Wood",
		tiles = {"tatami_simple.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("tatami", "wood", "variety:japanese_tatami", {
		description = "Japanese Tatami",
		tiles = {"tatami.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("japanese_lamp", "wood", "variety:japanese_lamp", {
		description = "Japanese Lamp",
		tiles = {"japanese_lamp.png"},
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	    sounds = default.node_sound_glass_defaults(),
	})

	stairsplus:register_all("japanese_tree", "wood", "variety:japanese_tree", {
		description = "japanese Tree",
	tiles = {"japanese_tree_top.png", "japanese_tree_top.png",
		"japanese_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})
end

---------------------------------------------
-------------BLOCKS
---------------------------------------------
minetest.register_node("variety:japanese_leaves_1", {
	description = "Japanese Leaves Green/Yellow",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"japanese_leaves_1.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:japanese_sapling"}, rarity = 20},
			{items = {"variety:japanese_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("variety:japanese_leaves_2", {
	description = "Japanese Leaves Dark Green",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"japanese_leaves_2.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:japanese_sapling"}, rarity = 20},
			{items = {"variety:japanese_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("variety:japanese_leaves_3", {
	description = "Japanese Leaves Green",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"japanese_leaves_3.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:japanese_sapling"}, rarity = 20},
			{items = {"variety:japanese_leaves_3"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("variety:japanese_tree", {
	description = "Japanese Tree",
	tiles = {"japanese_tree_top.png", "japanese_tree_top.png",
		"japanese_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

default.register_leafdecay({
	trunks = {"variety:japanese_tree"},
	leaves = {"variety:japanese_leaves_1", "variety:japanese_leaves_2", "variety:japanese_leaves_3"},
	radius = 3,
})



	stairs.register_stair_and_slab("japanese_wood", "variety:japanese_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"japanese_wood.png"},
		"Japanese Wood Stair",
		"Japanese Wood Slab",
		default.node_sound_wood_defaults())


minetest.register_node("variety:japanese_wood", {
	description = "Japanese Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"japanese_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("variety:tatami_simple", {
	description = "Japanese Simple Tatami",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tatami_simple.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("variety:japanese_tatami", {
	description = "Japanese Tatami",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tatami.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

doors.register_trapdoor("variety:japanese_trapdoor", {
	description = "Japanese Trapdoor",
	inventory_image = "japanese_trapdoor.png",
	wield_image = "japanese_trapdoor.png",
	tile_front = "japanese_trapdoor.png",
	tile_side = "japanese_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})


doors.register("japanese_door", {
		tiles = {{ name = "doors_japanese_door.png", backface_culling = true }},
		description = "Japanese Door",
		inventory_image = "doors_item_japanese.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"variety:fiber_bamboo", "variety:japanese_wood"},
			{"variety:japanese_wood", "variety:fiber_bamboo"},
			{"variety:fiber_bamboo", "variety:japanese_wood"},
		}
})

xpanes.register_pane("variety:japanese_small_wall_flat", {
	description = "Japanese Small Wall",
	textures = {"small_wall.png", "", "side_small_wall.png"},
	inventory_image = "small_wall.png",
	wield_image = "small_wall.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {choppy=1, oddly_breakable_by_hand=2, flammable = 3},
	recipe = {
		{"variety:fiber_bamboo", "variety:fiber_bamboo", "variety:fiber_bamboo"},
		{"dye:magenta", "variety:japanese_wood", "dye:magenta"},
	}
})

doors.register_fencegate("variety:gate_japanese", {
	description = "Japanese Wood Fence Gate",
	texture = "japanese_wood_fence.png",
	material = "variety:japanese_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_japanese_wood", {
		description = "Japanese Wood Fence",
		texture = "japanese_wood_fence.png",
		inventory_image = "japaneseforest_fence_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "japaneseforest_fence_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:japanese_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_japanese_wood", {
		description = "Japanese Wood Fence Rail",
		texture = "japanese_wood_fence.png",
		inventory_image = "japaneseforest_fence_rail_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "japaneseforest_fence_rail_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:japanese_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

minetest.register_node("variety:japanese_dirt_with_grass", {
	description = "Japanese Dirt With Grass",
	tiles = {"japaneseforest_japanese_grass.png", "default_dirt.png",
		{name = "default_dirt.png^japaneseforest_japanese_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("variety:japanese_lamp", {
	description = "Japanese Lamp",
	drawtype = "glasslike",
	tiles = {"japanese_lamp.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_wood_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_node("variety:japanese_sapling", {
	description = "Japanese Sapling",
	drawtype = "plantlike",
	tiles = {"japanese_sapling.png"},
	inventory_image = "japanese_sapling.png",
	wield_image = "japanese_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_japanese_forest_tree,
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
			"variety:japanese_sapling",
			{x = -1, y = 0, z = -1}, 
			{x = 1, y = 3, z = 1},
			2 
		)

		return itemstack
	end,
})

local function grow_new_japanese_tree(pos)
	if not default.can_grow(pos) then
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "japanese_tree_" .. math.random(1, 3) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:japanese_sapling", grow_new_japanese_tree, "soil"},
	})
	bonemeal:add_deco({
		{"variety:japanese_dirt_with_grass", {"default:grass_1", "default:grass_2", "default:grass_3", "default:grass_4", "default:grass_5"}, {}}
	})
end


