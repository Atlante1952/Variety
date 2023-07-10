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
	biomes = animalia.registered_biome_groups["boreal"].biomes, "tropical_rainforest",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:frog", {
	chance = ambient_spawn_chance * 0.75,
	interval = 60,
	min_light = 0,
	min_height = -1,
	max_height = 8,
	min_group = 1,
	max_group = 2,
	neighbors = {"group:water"},
    biomes =  "tropical_rainforest",
	nodes = {"group:soil"}
})

creatura.register_abm_spawn("animalia:horse", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 4,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "tropical_rainforest",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:pig", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 2,
	max_group = 3,
	biomes = pig_biomes, "tropical_rainforest",
	nodes = {"group:soil"},
})
end

---------------------------------------------
-------------CRAFTINGS
---------------------------------------------
minetest.register_craft({
	output = "variety:tropical_rainforest_wood 4",
	recipe = {
		{"variety:tropical_rainforest_tree"},
	}
})
---------------------------------------------
-------------MAPGENS
---------------------------------------------
	minetest.register_biome({
		name = "tropical_rainforest",
		node_top = "variety:tropical_rainforest_dirt_with_grass",
		depth_top = 1,
        node_filler = "default:dirt",
        depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_dungeon = "default:stone_brick",
		node_dungeon_alt = "default:cobblestone",
		y_max = 31000,
		y_min = 1,
		heat_point = 75,
		humidity_point = 45,

	})

minetest.register_decoration({
    name = "variety:tropical_tree_1",
    deco_type = "schematic",
    place_on = {"variety:tropical_rainforest_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.0026825,
    biomes = {"tropical_rainforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/tropical_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:tropical_tree_2",
    deco_type = "schematic",
    place_on = {"variety:tropical_rainforest_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.0026825,
    biomes = {"tropical_rainforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/tropical_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:tropical_tree_3",
    deco_type = "schematic",
    place_on = {"variety:tropical_rainforest_dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.0016825,
    biomes = {"tropical_rainforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/tropical_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:tropical_rainforest_bush_1",
    deco_type = "schematic",
    place_on = {"variety:tropical_rainforest_dirt_with_grass"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.013365,
    biomes = {"tropical_rainforest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/tropical_rainforest_bush_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"variety:tropical_rainforest_dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.5,
	biomes = {"tropical_rainforest"},
	decoration = {
		"default:grass_1", "default:grass_2",
		"default:grass_3", "default:grass_4",
		"default:grass_5", "default:junglegrass",
	}
})

---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("tropical_rainforest_wood", "wood", "variety:tropical_rainforest_wood", {
		description = "Tropical Rainforest Wood",
		tiles = {"tropical_rainforest_wood.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("tropical_rainforest_tree", "wood", "variety:tropical_rainforest_tree", {
		description = "Tropical Rainforest Tree",
	tiles = {"tropical_rainforest_tree_top.png", "tropical_rainforest_tree_top.png",
		"tropical_rainforest_tree.png"},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	    sounds = default.node_sound_wood_defaults(),
	})

end
---------------------------------------------
-------------BLOCKS
---------------------------------------------



	stairs.register_stair_and_slab("tropical_rainforest_wood", "variety:tropical_rainforest_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"tropical_rainforest_wood.png"},
		"Tropical Rainforest Wood Stair",
		"Tropical Rainforest Wood Slab",
		default.node_sound_wood_defaults())


minetest.register_node("variety:tropical_rainforest_dirt_with_grass", {
	description = "Tropical Rainforest Grass",
	tiles = {"tropical_rainforest_grass.png", "default_dirt.png",
		{name = "default_dirt.png^tropical_rainforest_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_dirt_footstep", gain = 0.25},
	}),
})

minetest.register_node("variety:tropical_leaves_1", {
	description = "Tropicale Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"tropical_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:tropical_sapling"}, rarity = 20},
			{items = {"variety:tropical_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:tropical_leaves_2", {
	description = "tropicale Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"tropical_leaves_2.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"variety:tropical_sapling"}, rarity = 20},
			{items = {"variety:tropical_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})


minetest.register_node("variety:tropical_rainforest_tree", {
	description = "Tropical Rainforest Tree",
	tiles = {"tropical_rainforest_tree_top.png", "tropical_rainforest_tree_top.png",
		"tropical_rainforest_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

	default.register_leafdecay({
		trunks = {"variety:tropical_rainforest_tree"},
		leaves = {"variety:tropical_leaves_1", "variety:tropical_leaves_2"},
		radius = 3,
	})



minetest.register_node("variety:tropical_rainforest_wood", {
	description = "tropical_rainforest Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"tropical_rainforest_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("variety:tropical_rainforest_sapling", {
	description = "tropical_rainforest Sapling",
	drawtype = "plantlike",
	tiles = {"tropical_rainforest_trees.png"},
	inventory_image = "tropical_rainforest_trees.png",
	wield_image = "tropical_rainforest_trees.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_tropical_rainforest_tree,
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
			"variety:tropical_rainforest_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_tropical_rainforest_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "tropical_tree_" .. math.random(1, 3) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:tropical_rainforest_sapling", grow_new_tropical_rainforest_tree, "soil"},
	})
end

doors.register_fencegate("variety:gate_tropical_rainforest", {
	description = "tropical_rainforest Wood Fence Gate",
	texture = "tropical_rainforest_wood_fence.png",
	material = "variety:tropical_rainforest_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_tropical_rainforest_wood", {
		description = "tropical_rainforest Wood Fence",
		texture = "tropical_rainforest_wood_fence.png",
		inventory_image = "default_fence_overlay.png^tropical_rainforest_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^tropical_rainforest_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:tropical_rainforest_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_tropical_rainforest_wood", {
		description = "tropical_rainforest Wood Fence Rail",
		texture = "tropical_rainforest_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^tropical_rainforest_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^tropical_rainforest_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:tropical_rainforest_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

