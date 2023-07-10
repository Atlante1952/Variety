

---------------------------------------------
-------------CRAFTS
---------------------------------------------
minetest.register_craft({
	output = "variety:frost_land_wood 4",
	recipe = {
		{"variety:frost_land_tree"},
	}
})


minetest.register_craft({
	output = "variety:frost_land_sapling",
	recipe = {
		{"default:stick", "variety:frost_land_leaves_1"},
		{"variety:frost_land_leaves_1", "variety:frost_land_leaves_2"},
	}
})

---------------------------------------------
-------------MAPGENS
---------------------------------------------

	minetest.register_biome({
		name = "frost_land",
        node_dust = "default:snow",
		node_top = "default:dirt_with_snow",
		depth_top = 1,
		node_filler = "default:snowblock",
		depth_filler = 3,
		node_riverbed = "default:snowblock",
		depth_riverbed = 2,
		node_dungeon = "default:ice",
		node_dungeon_alt = "default:snowblock",
		y_max = 31000,
		y_min = 4,
		heat_point = 2,
		humidity_point = 89,
	})

	minetest.register_biome({
		name = "ice_land",
        node_dust = "default:snow",
		node_top = "default:snowblock",
		depth_top = 4,
		node_filler = "default:ice",
		depth_filler = 250,
		node_riverbed = "default:snowblock",
		depth_riverbed = 2,
		node_dungeon = "default:ice",
		node_dungeon_alt = "default:snowblock",
		y_max = 31000,
		y_min = 1,
		heat_point = 0,
		humidity_point = 100,
	})

minetest.register_decoration({
    name = "variety:frost_tree_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/frost_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:frost_tree_2",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/frost_tree_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:frost_tree_3",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.001265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/frost_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})



minetest.register_decoration({
    name = "variety:ice_1",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:ice_2",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:ice_3",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:frost_tree_4",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/frost_tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:frost_tree_5",
    deco_type = "schematic",
    place_on = {"default:dirt_with_snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002265,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/frost_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:bush",
    deco_type = "schematic",
    place_on = {"default:snowblock"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.002165,
    biomes = {"frost_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/bush.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:ice_1_1",
    deco_type = "schematic",
    place_on = {"default:snowblock", "default:snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.005165,
    biomes = {"ice_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "variety:ice_2_2",
    deco_type = "schematic",
    place_on = {"default:snowblock", "default:snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.005165,
    biomes = {"ice_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
    name = "variety:ice_3_3",
    deco_type = "schematic",
    place_on = {"default:snowblock", "default:snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.005165,
    biomes = {"ice_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "variety:ice_4_4",
    deco_type = "schematic",
    place_on = {"default:snowblock", "default:snow"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.005165,
    biomes = {"ice_land"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("variety").."/schematics/ice_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})




---------------------------------------------
-------------MOREBLOCKS
---------------------------------------------
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("frost_land_wood", "wood", "variety:frost_land_wood", {
		description = "Frost Land Wood",
		tiles = {"frost_land_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("frost_land_tree", "tree", "variety:frost_land_tree", {
		description = "Japanese Tree",
	tiles = {"frost_land_tree_top.png", "frost_land_tree_top.png",
		"frost_land_tree.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})



end

---------------------------------------------
-------------BLOCKS
---------------------------------------------

minetest.register_node("variety:frost_land_leaves_1", {
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
			{items = {"variety:frost_land_sapling"}, rarity = 20},
			{items = {"variety:frost_land_leaves_1"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("variety:frost_land_leaves_2", {
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
			{items = {"variety:frost_land_sapling"}, rarity = 20},
			{items = {"variety:frost_land_leaves_2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})


minetest.register_node("variety:frost_land_wood", {
	description = "Frost Land Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"frost_land_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("variety:frost_land_tree", {
	description = "Frost Land Tree",
	tiles = {"frost_land_tree_top.png", "frost_land_tree_top.png",
		"frost_land_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("variety:frost_land_sapling", {
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
			"variety:frost_land_sapling",
			{x = -1, y = 0, z = -1},
			{x = 1, y = 3, z = 1},
			2
		)

		return itemstack
	end,
})

local function grow_new_frost_land_tree(pos)
	if not default.can_grow(pos) then
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "frost_tree_" .. math.random(1, 5) .. ".mts"
	minetest.place_schematic({x = pos.x - 2, y = pos.y, z = pos.z - 2}, minetest.get_modpath("variety") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"variety:frost_land_sapling", grow_new_frost_land_tree, "soil"},
	})
end

	stairs.register_stair_and_slab("frost_land_wood", "variety:frost_land_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"frost_land_wood.png"},
		"frost_land Wood Stair",
		"frost_land Wood Slab",
		default.node_sound_wood_defaults())


doors.register_fencegate("variety:gate_frost_land", {
	description = "frost_land Wood Fence Gate",
	texture = "frost_land_wood_fence.png",
	material = "variety:frost_land_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("variety:fence_frost_land_wood", {
		description = "Frost Land Wood Fence",
		texture = "frost_land_wood_fence.png",
		inventory_image = "default_fence_overlay.png^frost_land_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^frost_land_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "variety:frost_land_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("variety:fence_rail_frost_land_wood", {
		description = "frost_land Wood Fence Rail",
		texture = "frost_land_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^frost_land_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^frost_land_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "variety:frost_land_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})
	default.register_leafdecay({
		trunks = {"variety:frost_land_tree"},
		leaves = {"variety:frost_land_leaves_2", "variety:frost_land_leaves_1"},
		radius = 3,
	})

---------------------------------------------
-------------CREATURA/ANIMALIA
---------------------------------------------
if minetest.get_modpath("creatura") then
creatura.register_abm_spawn("animalia:sheep", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 3,
	max_group = 6,
	biomes = animalia.registered_biome_groups["grassland"].biomes, "frost_land",
	nodes = {"group:soil"},
	neighbors = {"air", "group:grass", "group:flora"}
})

creatura.register_abm_spawn("animalia:reindeer", {
	chance = common_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 6,
	max_group = 8,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "frost_land",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:fox", {
	chance = predator_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 1,
	max_group = 2,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "frost_land",
	nodes = {"group:soil"},
})

creatura.register_abm_spawn("animalia:wolf", {
	chance = predator_spawn_chance,
	min_height = 0,
	max_height = 1024,
	min_group = 2,
	max_group = 3,
	biomes = animalia.registered_biome_groups["boreal"].biomes, "frost_land",
	nodes = {"group:soil"},
})
end
