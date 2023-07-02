

minetest.register_node("japanese_forest:japanese_leaves_1", {
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
			{items = {"japanese_forest:japanese_sapling"}, rarity = 20},
			{items = {"japanese_forest:japanese_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("japanese_forest:japanese_leaves_2", {
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
			{items = {"japanese_forest:japanese_sapling"}, rarity = 20},
			{items = {"japanese_forest:japanese_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("japanese_forest:japanese_leaves_3", {
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
			{items = {"japanese_forest:japanese_sapling"}, rarity = 20},
			{items = {"japanese_forest:japanese_leaves_3"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("japanese_forest:japanese_tree", {
	description = "Japanese Tree",
	tiles = {"japanese_tree_top.png", "japanese_tree_top.png",
		"japanese_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("japanese_forest:japanese_wood", {
	description = "Japanese Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"japanese_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("japanese_forest:sashimi_brick", {
	description = "Sashimi Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"sashimi_brick.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("japanese_forest:tatami_simple", {
	description = "Japanese Simple Tatami",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tatami_simple.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("japanese_forest:japanese_tatami", {
	description = "Japanese Tatami",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tatami.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

doors.register_trapdoor("japanese_forest:japanese_trapdoor", {
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
			{"bambooforest:fiber_bamboo", "japanese_forest:japanese_wood"},
			{"japanese_forest:japanese_wood", "bambooforest:fiber_bamboo"},
			{"bambooforest:fiber_bamboo", "japanese_forest:japanese_wood"},
		}
})

xpanes.register_pane("japanese_forest:japanese_small_wall_flat", {
	description = "Japanese Small Wall",
	textures = {"small_wall.png", "", "side_small_wall.png"},
	inventory_image = "small_wall.png",
	wield_image = "small_wall.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {choppy=1, oddly_breakable_by_hand=2, flammable = 3},
	recipe = {
		{"bambooforest:fiber_bamboo", "bambooforest:fiber_bamboo", "bambooforest:fiber_bamboo"},
		{"dye:magenta", "japanese_forest:japanese_wood", "dye:magenta"},
	}
})

doors.register_fencegate("japanese_forest:gate_japanese", {
	description = "Japanese Wood Fence Gate",
	texture = "japanese_wood_fence.png",
	material = "japanese_forest:japanese_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("japanese_forest:fence_japanese_wood", {
		description = "Japanese Wood Fence",
		texture = "japanese_wood_fence.png",
		inventory_image = "japaneseforest_fence_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "japaneseforest_fence_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_overlay.png^[makealpha:255,126,126",
		material = "japanese_forest:japanese_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("japanese_forest:fence_rail_japanese_wood", {
		description = "Japanese Wood Fence Rail",
		texture = "japanese_wood_fence.png",
		inventory_image = "japaneseforest_fence_rail_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "japaneseforest_fence_rail_overlay.png^japanese_wood_fence.png^" ..
					"japaneseforest_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "japanese_forest:japanese_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})



minetest.register_node("japanese_forest:mud", {
	description = "Japanese Mub",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mud.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("japanese_forest:mud_block", {
	description = "Japanese Mub Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mud_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("japanese_forest:mud_brick", {
	description = "Japanese Mub Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mud_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("japanese_forest:japanese_dirt_with_grass", {
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

minetest.register_node("japanese_forest:japanese_lamp", {
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

minetest.register_node("japanese_forest:japanese_sapling", {
	description = "Japanese Sapling",
	drawtype = "plantlike",
	tiles = {"japanese_sapling.png"},
	inventory_image = "japanese_sapling.png",
	wield_image = "japanese_sapling.png",
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
			"japanese_forest:japanese_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_japanese_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "japanese_tree_" .. math.random(1, 3) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("japanese_forest") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"japanese_forest:japanese_sapling", grow_new_japanese_tree, "soil"},
	})
end
