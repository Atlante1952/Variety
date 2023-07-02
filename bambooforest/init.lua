
-- Bamboo
minetest.register_node("bambooforest:bamboo", {
	description = "Bamboo",
	drawtype = "plantlike",
	tiles = {"bambooforest_bamboo_tree.png"},
	inventory_image = "bambooforest_bamboo_tree.png",
	wield_image = "bambooforest_bamboo_tree.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	drop = {
		max_items = 1,
		items = {
			{items = {"bambooforest:bamboo_sapling"}, rarity = 20},
			{items = {"bambooforest:bamboo"}}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.10, -0.5, -0.10, 0.10, 0.5, 0.10}
	},
        collision_box = {
            type = "fixed",
		fixed = {-0.10, -0.5, -0.10, 0.10, 0.5, 0.10}
        },
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end

})
---------Biome
minetest.register_biome({
    name = "bamboo_forest",
    node_top = "bambooforest:dirt_with_bamboo",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 70,
		node_riverbed = "default:sand",
		depth_riverbed = 3,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
    heat_point = 89,
    humidity_point = 77,
})






-------------Sapling


minetest.register_node("bambooforest:bamboo_sapling", {
	description = "Bamboo Sapling",
	drawtype = "plantlike",
	tiles = {"bambooforest_bamboo_sapling.png"},
	inventory_image = "bambooforest_bamboo_sapling.png",
	wield_image = "bambooforest_bamboo_sapling.png",
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
			"bambooforest:bamboo_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_bamboo_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "bamboo_tree_" .. math.random(1, 9) .. ".mts"
	minetest.place_schematic({x = pos.x - 0, y = pos.y, z = pos.z - 0}, minetest.get_modpath("bambooforest") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"bambooforest:bamboo_sapling", grow_new_bamboo_tree, "soil"},
	})
end
------------Shematics
minetest.register_decoration({
    name = "bambooforest:bamboo_tree_1",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_2",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_3",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_4",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_5",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_5",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_6",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_6.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_7",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_7.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_8",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_8.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:bamboo_tree_9",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.014565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bambooforest").."/schematics/bamboo_tree_9.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:ruins_1",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 0.000135,
    biomes = {"bamboo_forest"},
    y_max = 30,
    y_min = 10,
    schematic = minetest.get_modpath("bambooforest").."/schematics/ruins_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bambooforest:jungle_tree",
    deco_type = "schematic",
    place_on = {"bambooforest:dirt_with_bamboo"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



--------------Decoration (node)
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"bambooforest:dirt_with_bamboo"},
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"bamboo_forest"},
	decoration = {
		"default:junglegrass"
	}
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"bambooforest:dirt_with_bamboo"},
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"bamboo_forest"},
	decoration = {
		"flowers:mushroom_brown", "flowers:mushroom_red"
	}
})



minetest.register_decoration({
	deco_type = "simple",
	place_on = {"bambooforest:dirt_with_bamboo"},
	sidelen = 16,
	fill_ratio = 0.2,
	biomes = {"bamboo_forest"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5",
	}
})

-----Sapling 
local function grow_new_bamboo_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_1.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_2.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_3.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_4.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_5.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_6.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_7.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_8.mts", "0", nil, true)
	minetest.place_schematic({x = pos.x, y = pos.y, z = pos.z}, modpath.."/schematics/bamboo_tree_9.mts", "0", nil, true)
end 

---------------Node 
minetest.register_node("bambooforest:bamboo_wood", {
	description = "Bamboo Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bamboo_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("bambooforest:dirt_with_bamboo", {
	description = "Dirt with Bamboo",
	tiles = {"bambooforest_bamboo_grass.png", "default_dirt.png",
		{name = "default_dirt.png^bambooforest_bamboo_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("bambooforest:bamboo_glass", {
	description = "Bamboo Glass",
	drawtype = "allfaces",
	tiles = {"bamboo_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("bambooforest:bamboo_block", {
	description = "Bamboo Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bamboo_block.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

doors.register_trapdoor("bambooforest:bamboo_trapdoor", {
	description = "Bamboo Trapdoor",
	inventory_image = "bamboo_trapdoor.png",
	wield_image = "bamboo_trapdoor.png",
	tile_front = "bamboo_trapdoor.png",
	tile_side = "bamboo_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})

doors.register_fencegate("bambooforest:gate_bamboo", {
	description = "Bamboo Wood Fence Gate",
	texture = "bamboo_wood_fence.png",
	material = "bambooforest:bamboo_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

doors.register("bamboo_door", {
		tiles = {{ name = "doors_bamboo_door.png", backface_culling = true }},
		description = "Bamboo Door",
		inventory_image = "doors_item_bamboo.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"bambooforest:fiber_bamboo", "bambooforest:bamboo_wood"},
			{"bambooforest:bamboo_wood", "bambooforest:fiber_bamboo"},
			{"bambooforest:fiber_bamboo", "bambooforest:bamboo_wood"},
		}
})

minetest.register_node("bambooforest:granite", {
	description = "Granite",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"granite.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bambooforest:granite_block", {
	description = "Granite Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"granite_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bambooforest:granite_brick", {
	description = "Granite Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"granite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-------------Item
minetest.register_craftitem("bambooforest:bamboo_cooked", {
	description = "Bamboo Cooked",
	inventory_image = "bamboo_cooked.png",
	on_use = minetest.item_eat(2),
	groups = {food_bread = 1},
})

minetest.register_craftitem("bambooforest:fiber_bamboo", {
	description = "Bamboo Fiber",
	inventory_image = "fibre_bamboo.png",

})

------------Crafting
minetest.register_craft({
	output = "bambooforest:bamboo_wood",
	recipe = {
		{"bambooforest:bamboo", "bambooforest:bamboo"},
		{"bambooforest:bamboo", "bambooforest:bamboo"},
	}
})

minetest.register_craft({
	output = "bambooforest:fiber_bamboo 8",
	recipe = {
		{"bambooforest:bamboo"},
	}
})

minetest.register_craft({
	output = "bambooforest:granite 4",
	recipe = {
		{"default:sand", "default:silver_sand"},
		{"default:gravel", "default:stone"},
	}
})

minetest.register_craft({
	output = "bambooforest:granite_block 9",
	recipe = {
		{"bambooforest:granite", "bambooforest:granite", "bambooforest:granite"},
		{"bambooforest:granite", "bambooforest:granite", "bambooforest:granite"},
		{"bambooforest:granite", "bambooforest:granite", "bambooforest:granite"},
	}
})

minetest.register_craft({
	output = "bambooforest:granite_brick 4",
	recipe = {
		{"bambooforest:granite_block", "bambooforest:granite_block"},
		{"bambooforest:granite_block", "bambooforest:granite_block"},
	}
})

minetest.register_craft({
	output = "bambooforest:bamboo_glass",
	recipe = {
		{"", "bambooforest:bamboo", ""},
		{"bambooforest:bamboo", "default:glass", "bambooforest:bamboo"},
		{"", "bambooforest:bamboo", ""},
	}
})

minetest.register_craft({
	output = "bambooforest:bamboo_block",
	recipe = {
		{"bambooforest:bamboo_wood", "bambooforest:bamboo", "bambooforest:bamboo_wood"},
		{"bambooforest:bamboo", "bambooforest:bamboo_wood", "bambooforest:bamboo"},
		{"bambooforest:bamboo_wood", "bambooforest:bamboo", "bambooforest:bamboo_wood"},
	}
})

minetest.register_craft({
	output = "bambooforest:bamboo_sapling",
	recipe = {
		{"bambooforest:bamboo", "default:dirt"},
		{"default:dirt", "bambooforest:bamboo"},
	}
})

minetest.register_craft({
	output = "bambooforest:bamboo_trapdoor 2",
	recipe = {
		{"bambooforest:fiber_bamboo", "bambooforest:bamboo_wood", "bambooforest:fiber_bamboo"},
		{"bambooforest:bamboo_wood", "bambooforest:fiber_bamboo", "bambooforest:bamboo_wood"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:bamboo_block 6",
	recipe = {
		{"bambooforest:bamboo_block", "bambooforest:bamboo_block", "bambooforest:bamboo_block"},
		{"bambooforest:bamboo_block", "bambooforest:bamboo_block", "bambooforest:bamboo_block"},
		{"", "", ""},
	}
})





minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	output = "bambooforest:bamboo_cooked",
	recipe = "bambooforest:bamboo"
})

--------Fence

	default.register_fence("bambooforest:fence_bamboo_wood", {
		description = "Bamboo Wood Fence",
		texture = "bamboo_wood_fence.png",
		inventory_image = "default_fence_overlay.png^bamboo_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^bamboo_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "bambooforest:bamboo_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("bambooforest:fence_rail_bamboo_wood", {
		description = "Bamboo Wood Fence Rail",
		texture = "bamboo_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^bamboo_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^bamboo_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "bambooforest:bamboo_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})
------------------Mapgen

	-- Granite

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "bambooforest:granite",
		wherein         = {"default:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = -50,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

-----------------Moreblock
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("bamboo_wood", "wood", "bambooforest:bamboo_wood", {
		description = "Bamboo Wood",
		tiles = {"bamboo_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("bamboo_glass", "glass", "bambooforest:bamboo_glass", {
		description = "Bamboo Glass",
		tiles = {"bamboo_glass.png"},
    	groups = {cracky = 3, oddly_breakable_by_hand = 3},
    	sounds = default.node_sound_glass_defaults(),
	})

	stairsplus:register_all("bamboo_block", "wood", "bambooforest:bamboo_block", {
		description = "Bamboo Block",
		tiles = {"bamboo_block.png"},
	    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("granite", "stone", "bambooforest:granite", {
		description = "Granite",
		tiles = {"granite.png"},
	groups = {cracky = 3, stone = 2, level = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("granite_block", "stone", "bambooforest:granite_block", {
		description = "Granite Block",
		tiles = {"granite_block.png"},
	groups = {cracky = 3, stone = 2, level = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("granite_brick", "stone", "bambooforest:granite_brick", {
		description = "Granite Brick",
		tiles = {"granite_brick.png"},
	groups = {cracky = 3, stone = 2, level = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

end

if minetest.get_modpath("walls") then


walls.register(":walls:bamboo_block", "Bamboo Block Wall", "bamboo_block.png",
		"bambooforest:bamboo_block", default.node_sound_wood_defaults())

walls.register(":walls:granite_brick", "Granite Brick Wall", "granite_brick.png",
		"bambooforest:granite_brick", default.node_sound_stone_defaults())
end

minetest.register_craft({
	output = "walls:granite_brick 6",
	recipe = {
		{"bambooforest:granite", "bambooforest:granite", "bambooforest:granite"},
		{"bambooforest:granite", "bambooforest:granite", "bambooforest:granite"},
		{"", "", ""},
	}
})



