minetest.register_node("frost_land:frost_land_leaves_1", {
	description = "frost_land Blue Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"frost_leaves_1.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"frost_land:frost_land_sapling"}, rarity = 20},
			{items = {"frost_land:frost_land_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("frost_land:frost_land_leaves_2", {
	description = "frost_land Yellow Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"frost_leaves_2.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"frost_land:frost_land_sapling"}, rarity = 20},
			{items = {"frost_land:frost_land_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("frost_land:frost_land_grass", {
	description = "Frost Land Grass",
	tiles = {"frost_land_grass.png", "default_dirt.png",
		{name = "default_dirt.png^frost_land_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.25},
	}),
})

minetest.register_node("frost_land:frost_land_wood", {
	description = "Frost Land Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"frost_land_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("frost_land:frost_land_tree", {
	description = "Frost Land Tree",
	tiles = {"frost_land_tree_top.png", "frost_land_tree_top.png",
		"frost_land_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("frost_land:frost_land_sapling", {
	description = "Frost Land Sapling",
	drawtype = "plantlike",
	tiles = {"frost_land_sapling.png"},
	inventory_image = "frost_land_sapling.png",
	wield_image = "frost_land_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_frost_land_tree,
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
			"frost_land:frost_land_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_frost_land_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "frost_tree_" .. math.random(1, 5) .. ".mts"
	minetest.place_schematic({x = pos.x - 2, y = pos.y, z = pos.z - 2}, minetest.get_modpath("frost_land") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"frost_land:frost_land_sapling", grow_new_frost_land_tree, "soil"},
	})
end
