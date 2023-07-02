minetest.register_node("redwood:redwood_dirt_with_grass", {
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

minetest.register_node("redwood:redwood_tree", {
	description = "Redwood Tree",
	tiles = {"redwood_tree_top.png", "redwood_tree_top.png",
		"redwood_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("redwood:redwood", {
	description = "RedWood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"redwood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})




minetest.register_node("redwood:redwood_leaves", {
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
			{items = {"redwood:redwood_sapling"}, rarity = 20},
			{items = {"redwood:redwood_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})




minetest.register_node("redwood:redwood_sapling", {
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
			"redwood:redwood_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_redwood_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "tree_" .. math.random(1, 5) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("redwood") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"redwood:redwood_sapling", grow_new_redwood_tree, "soil"},
	})
end


doors.register_fencegate("redwood:gate_redwood", {
	description = "redwood Wood Fence Gate",
	texture = "redwood_wood_fence.png",
	material = "redwood:redwood_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("redwood:fence_redwood_wood", {
		description = "redwood Wood Fence",
		texture = "redwood_wood_fence.png",
		inventory_image = "default_fence_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "redwood:redwood_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("redwood:fence_rail_redwood_wood", {
		description = "redwood Wood Fence Rail",
		texture = "redwood_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^redwood_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "redwood:redwood_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})
