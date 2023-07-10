---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "variety:baobab_wood 4",
	recipe = {
		{"variety:baobab_tree"},
	}
})

---------------------------------------------
-------------MAPGENS
---------------------------------------------
minetest.register_decoration({
    name = "variety:baobab_tree_1",
    deco_type = "schematic",
    place_on = {"default:dry_dirt_with_dry_grass"},
    place_offset_y = -8,
    sidelen = 16,
    fill_ratio = 0.000665,
    biomes = {"savanna"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/baobab_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:baobab_tree_2",
    deco_type = "schematic",
    place_on = {"default:dry_dirt_with_dry_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.000305,
    biomes = {"savanna"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/baobab_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("baobab_tree", "wood", "variety:baobab_tree", {
		description = "Baobab Tree",
	tiles = {"baobab_tree_top.png", "baobab_tree_top.png",
		"baobab_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("baobab_wood", "wood", "variety:baobab_wood", {
		description = "Baobab Wood",
	tiles = {"baobab_wood.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})
end

---------------------------------------------
-------------BLOCKS
---------------------------------------------
minetest.register_node("variety:baobab_leaves", {
	description = "Baobab Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"baobab_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:baobab_sapling"}, rarity = 20},
			{items = {"variety:baobab_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:baobab_tree", {
	description = "Baobab Tree",
	tiles = {"baobab_tree_top.png", "baobab_tree_top.png",
		"baobab_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("variety:baobab_wood", {
	description = "Baobab Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"baobab_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("variety:baobab_sapling", {
	description = "Baobab Sapling",
	drawtype = "plantlike",
	tiles = {"baobab_trees.png"},
	inventory_image = "baobab_trees.png",
	wield_image = "baobab_trees.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_baobab_tree,
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
			"variety:baobab_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_baobab_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "baobab_tree_" .. math.random(1, 2) .. ".mts"
	minetest.place_schematic({x = pos.x - 8, y = pos.y - 8, z = pos.z - 8}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:baobab_sapling", grow_new_baobab_tree, "soil"},
	})
end

	default.register_leafdecay({
		trunks = {"variety:baobab_tree"},
		leaves = {"variety:baobab_leaves"},
		radius = 3,
	})

	stairs.register_stair_and_slab("baobab_wood", "variety:baobab_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"baobab_wood.png"},
		"baobab Wood Stair",
		"baobab Wood Slab",
		default.node_sound_wood_defaults())


doors.register_fencegate("variety:gate_baobab", {
	description = "baobab Wood Fence Gate",
	texture = "baobab_wood_fence.png",
	material = "variety:baobab_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_baobab_wood", {
		description = "baobab Wood Fence",
		texture = "baobab_wood_fence.png",
		inventory_image = "default_fence_overlay.png^baobab_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^baobab_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:baobab_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_baobab_wood", {
		description = "baobab Wood Fence Rail",
		texture = "baobab_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^baobab_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^baobab_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:baobab_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})



