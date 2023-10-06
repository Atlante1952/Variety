---------------------------------------------
-------------MAPGENS
---------------------------------------------
	minetest.register_biome({
		name = "autumn_forest",
		node_top = "variety:autumn_forest_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "variety:autumn_forest_grass",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = 6,
		heat_point = 71,
		humidity_point = 84,
	})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:autumn_forest_grass"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"autumn_forest"},
	decoration = {
        "default:dry_shrub", "flowers:mushroom_brown",
        "variety:autumn_forest_grass_1", "variety:autumn_forest_grass_2",
        "variety:autumn_forest_grass_3", "variety:autumn_forest_grass_4",
        "variety:autumn_forest_grass_5", "variety:toadstool",
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:autumn_forest_grass"},
	sidelen = 16,
	fill_ratio = 0.006,
	biomes = {"autumn_forest"},
	decoration = {
        "variety:pumpkin_block",
	}
})

minetest.register_decoration({
    name = "variety:autumn_forest_brush",
    deco_type = "schematic",
    place_on = {"variety:autumn_forest_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003265,
    biomes = {"autumn_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/autumn_forest_bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:autumn_forest_log_1",
    deco_type = "schematic",
    place_on = {"variety:autumn_forest_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003265,
    biomes = {"autumn_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/autumn_forest_log_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:autumn_forest_log_2",
    deco_type = "schematic",
    place_on = {"variety:autumn_forest_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.003265,
    biomes = {"autumn_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/autumn_forest_log_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:autumn_forest_tree_1",
    deco_type = "schematic",
    place_on = {"variety:autumn_forest_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.0111325,
    biomes = {"autumn_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/autumn_forest_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:autumn_forest_tree_2",
    deco_type = "schematic",
    place_on = {"variety:autumn_forest_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.0111325,
    biomes = {"autumn_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/autumn_forest_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:autumn_forest_tree_3",
    deco_type = "schematic",
    place_on = {"variety:autumn_forest_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.0111325,
    biomes = {"autumn_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/autumn_forest_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:racine_1",
    deco_type = "schematic",
    place_on = {"variety:autumn_forest_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.000665,
    biomes = {"autumn_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/racine_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


---------------------------------------------
-------------BLOCKS
---------------------------------------------


	stairs.register_stair_and_slab("autumn_forest_wood", "variety:autumn_forest_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"autumn_forest_wood.png"},
		"Autumn Forest Wood Stair",
		"Autumn Forest Wood Slab",
		default.node_sound_wood_defaults())


minetest.register_node("variety:autumn_forest_grass", {
	description = "Autumn Forest Grass",
	tiles = {"autumn_forest_grass.png", "default_dirt.png",
		{name = "default_dirt.png^autumn_forest_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("variety:autumn_forest_leaves", {
	description = "Autumn Forest Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"autumn_forest_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:autumn_forest_sapling"}, rarity = 20},
			{items = {"variety:autumn_forest_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:autumn_forest_leaves_2", {
	description = "Autumn Forest Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"autumn_forest_leaves_2.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:autumn_forest_sapling"}, rarity = 20},
			{items = {"variety:autumn_forest_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:autumn_forest_leaves_3", {
	description = "Autumn Forest Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"autumn_forest_leaves_3.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:autumn_forest_sapling"}, rarity = 20},
			{items = {"variety:autumn_forest_leaves_3"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:autumn_forest_tree", {
	description = "Autumn Forest Tree",
	tiles = {"autumn_forest_tree_top.png", "autumn_forest_tree_top.png",
		"autumn_forest_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})


minetest.register_node("variety:autumn_forest_wood", {
	description = "Autumn Forest Wood",
	tiles = {"autumn_forest_wood.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

doors.register_fencegate("variety:gate_autumn_forest", {
	description = "Autumn Forest Wood Fence Gate",
	texture = "autumn_forest_wood_fence.png",
	material = "variety:autumn_forest_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_autumn_forest_wood", {
		description = "Autumn Forest Wood Fence",
		texture = "autumn_forest_wood_fence.png",
		inventory_image = "default_fence_overlay.png^autumn_forest_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^autumn_forest_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:autumn_forest_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_autumn_forest_wood", {
		description = "Autumn Forest Wood Fence Rail",
		texture = "autumn_forest_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^autumn_forest_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^autumn_forest_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:autumn_forest_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	minetest.register_node("variety:toadstool", {
		description = "Toadstool",
		tiles = {"toadstool.png"},
		inventory_image = "toadstool.png",
		wield_image = "toadstool.png",
		drawtype = "plantlike",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {mushroom = 1, food_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
		sounds = default.node_sound_leaves_defaults(),
		on_use = minetest.item_eat(1),
		selection_box = {
			type = "fixed",
			fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, -2 / 16, 3 / 16},
		}
	})

	minetest.register_node("variety:autumn_forest_grass_1", {
		description = "Autumn Forest Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"autumn_forest_grass_1.png"},
		inventory_image = "autumn_forest_grass_3.png",
		wield_image = "autumn_forest_grass_3.png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
		max_items = 1,
			items = {
				{items = {"farming:seed_wheat"}, rarity = 5},
				{items = {"variety:autumn_forest_grass_1"}},
			},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
		},

		on_place = function(itemstack, placer, pointed_thing)
			-- place a random grass node
			local stack = ItemStack("variety:autumn_forest_grass_" .. math.random(1,5))
			local ret = minetest.item_place(stack, placer, pointed_thing)
			return ItemStack("variety:autumn_forest_grass_1 " ..
				itemstack:get_count() - (1 - ret:get_count()))
		end,
	})

for i = 2, 5 do
	minetest.register_node("variety:autumn_forest_grass_" .. i, {
		description = "Autumn Forest Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"autumn_forest_grass_" .. i .. ".png"},
		inventory_image = "autumn_forest_grass_" .. i .. ".png",
		wield_image = "autumn_forest_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		drop = "variety:autumn_forest_grass_1",
		groups = {snappy = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory = 1, grass = 1, flammable = 1},
			max_items = 1,
		items = {
			{items = {"farming:seed_wheat"}, rarity = 5},
			{items = {"variety:autumn_forest_grass_1"}},
		},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end

minetest.register_node("variety:pumpkin_block", {
	description = "Pumpkin Block",
	tiles = {"autumn_forest_pumpkin_fruit_top.png", "autumn_forest_pumpkin_fruit_top.png", "autumn_forest_pumpkin_fruit_side.png", "autumn_forest_pumpkin_fruit_side.png", "autumn_forest_pumpkin_fruit_side.png", "autumn_forest_pumpkin_fruit_side_off.png"},
	paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
	is_ground_content = false,
	groups = {snappy=3, flammable=4, fall_damage_add_percent=-30},
	on_construct = pumpkin_on_construct
})

minetest.register_node("variety:pumpkin_lantern", {
	description = "Pumpkin Lantern",
	tiles = {"autumn_forest_pumpkin_fruit_top.png", "autumn_forest_pumpkin_fruit_top.png", "autumn_forest_pumpkin_fruit_side.png", "autumn_forest_pumpkin_fruit_side.png", "autumn_forest_pumpkin_fruit_side.png", "autumn_forest_pumpkin_fruit_side_on.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
	is_ground_content = false,
	light_source = 12,
	drop = "variety:pumpkin_lantern",
	groups = {snappy=3, flammable=4, fall_damage_add_percent=-30},
	on_construct = pumpkin_on_construct
})

minetest.register_node("variety:autumn_forest_sapling", {
	description = "Autumn Forest Sapling",
	drawtype = "plantlike",
	tiles = {"autumn_forest_sapling.png"},
	inventory_image = "autumn_forest_sapling.png",
	wield_image = "autumn_forest_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_autumn_forest_tree,
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
			"variety:autumn_forest_sapling",
			{x = -1, y = 0, z = -1},
			{x = 1, y = 3, z = 1},
			2 
		)

		return itemstack
	end,
})

local function grow_new_autumn_forest_tree(pos)
	if not default.can_grow(pos) then
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "autumn_forest_tree_" .. math.random(1, 3) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:autumn_forest_sapling", grow_new_autumn_forest_tree, "soil"},
	})
	bonemeal:add_deco({
		{"variety:autumn_forest_grass", {"variety:autumn_forest_grass_1", "variety:autumn_forest_grass_2", "variety:autumn_forest_grass_3", "variety:autumn_forest_grass_4", "variety:autumn_forest_grass_5", "default:dry_shrub"}, {}}
	})
end
	default.register_leafdecay({
		trunks = {"variety:autumn_forest_tree"},
		leaves = {"variety:autumn_forest_leaves", "variety:autumn_forest_leaves_3", "variety:autumn_forest_leaves_2"},
		radius = 3,
	})
---------------------------------------------
-------------CRAFTS
---------------------------------------------

minetest.register_craft({
	output = "variety:autumn_forest_wood 4",
	recipe = {
		{"variety:autumn_forest_tree"},
	}
})

minetest.register_craft({
	output = "variety:bowl 2",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"", "group:wood", ""},
	}
})

minetest.register_craft({
	output = "variety:autumn_forest_sapling",
	recipe = {
		{"default:stick", "variety:autumn_forest_leaves"},
		{"variety:autumn_forest_leaves", "variety:autumn_forest_leaves"},
	}
})

minetest.register_craft({
	output = "variety:mushroom_bowl 1",
	recipe = {
		{"flowers:mushroom_brown", "flowers:mushroom_red"},
		{"variety:toadstool", "variety:bowl"},
	}
})

minetest.register_craft({
	output = "variety:scarecrow",
	recipe = {
		{"variety:pumpkin_block", "wool:blue"},
		{"default:stick", "default:stick"},
	}
})

minetest.register_craft({
	output = "variety:autumn_forest_trapdoor 2",
	recipe = {
		{"variety:autumn_forest_wood", "variety:autumn_forest_wood", "variety:autumn_forest_wood"},
		{"variety:autumn_forest_wood", "variety:autumn_forest_wood", "variety:autumn_forest_wood"},
	}
})

---------------------------------------------
-------------ITEMS
---------------------------------------------

minetest.register_craftitem("variety:mushroom_bowl", {
	description = "Mushroom Bowl Cooked",
	inventory_image = "autumn_forest_mushroom_bowl.png",
	groups = {food_bread = 1, flammable = 2},
})

minetest.register_craftitem("variety:bowl", {
	description = "Wooden Bowl",
	inventory_image = "autumn_forest_bowl.png",
})

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------

if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("autumn_forest_wood", "wood", "variety:autumn_forest_wood", {
		description = "Autumn Forest Wood",
		tiles = {"autumn_forest_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("autumn_forest_tree", "tree", "variety:autumn_forest_tree", {
		description = "Autumn Forest Tree",
	tiles = {"autumn_forest_tree_top.png", "autumn_forest_tree_top.png",
		"autumn_forest_tree.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})
end
