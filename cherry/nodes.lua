minetest.register_node("cherry:cherry_leaves", {
	description = "Cherry Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"cherry_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"cherry:cherry_sapling"}, rarity = 20},
			{items = {"cherry:cherry_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos)

		minetest.get_node_timer(pos):start(5) 
	end,

	on_particle_leaves = function(pos)
		local particle_texture = "cherry_leaves_particul.png"
		local particle_count = 3
		local particle_time = 5 

		minetest.add_particlespawner({
			amount = particle_count,
			time = particle_time,
			minpos = {x = pos.x, y = pos.y, z = pos.z},
			maxpos = {x = pos.x, y = pos.y, z = pos.z},
			minvel = {x = -0.5, y = -0.5, z = -0.5}, -- Réduire la vitesse de chute en ajustant les valeurs ici
			maxvel = {x = 0.5, y = -1, z = 0.5}, -- Réduire la vitesse de chute en ajustant les valeurs ici
			minacc = {x = 0, y = -9, z = 0},
			maxacc = {x = 0, y = -9, z = 0},
			minexptime = 1,
			maxexptime = 1,
			minsize = 1.2,
			maxsize = 2,
			texture = particle_texture,
			collisiondetection = true,
			vertical = false,
			glow = 14
		})
	end,
})


minetest.register_abm({
	nodenames = {"cherry:cherry_leaves"},
	interval = 10,
	chance = 0.8,
	action = function(pos)
		local node = minetest.get_node(pos)
		if node and node.name == "cherry:cherry_leaves" then
			minetest.registered_nodes["cherry:cherry_leaves"].on_particle_leaves(pos)
		end
	end,
})


minetest.register_node("cherry:cherry_dirt_with_grass", {
	description = "Cherry Grass",
	tiles = {"cherry_grass.png", "default_dirt.png",
		{name = "default_dirt.png^cherry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_dirt_footstep", gain = 0.25},
	}),
})

minetest.register_node("cherry:cherry_tree", {
	description = "Cherry Tree",
	tiles = {"cherry_tree_top.png", "cherry_tree_top.png",
		"cherry_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("cherry:cherry_wood", {
	description = "Cherry Wood",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"cherry_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("cherry:cherry_sapling", {
	description = "cherry Sapling",
	drawtype = "plantlike",
	tiles = {"cherry_trees.png"},
	inventory_image = "cherry_trees.png",
	wield_image = "cherry_trees.png",
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
			"cherry:cherry_sapling",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})

local function grow_new_cherry_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "cherry_tree_" .. math.random(1, 2) .. ".mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y, z = pos.z - 4}, minetest.get_modpath("cherry") .. "/schematics/" .. random_tree, "0", nil, false)
end


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"cherry:cherry_sapling", grow_new_cherry_tree, "soil"},
	})
end

minetest.register_node("cherry:cherry_leaves_on_the_ground", {
	description = "Cherry Leaves on the ground",
	drawtype = "signlike",
	waving = 1,
	tiles = {"cherry_leaves.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "cherry_leaves.png",
	wield_image = "cherry_leaves.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, attached_node = 1, oddly_breakable_by_hand=3, 
flammable = 1, food_bread = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type="wallmounted",
		wall_top = {-0.5, 0.49, -0.5, 0.5, 0.5, 0.5},
		wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.49, 0.5},
		wall_side = {-0.5, -0.5, -0.5, -0.49, 0.5, 0.5},
	},
})

doors.register_fencegate("cherry:gate_cherry", {
	description = "Cherry Wood Fence Gate",
	texture = "cherry_wood_fence.png",
	material = "cherry:cherry_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("cherry:fence_cherry_wood", {
		description = "cherry Wood Fence",
		texture = "cherry_wood_fence.png",
		inventory_image = "default_fence_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "cherry:cherry_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("cherry:fence_rail_cherry_wood", {
		description = "Cherry Wood Fence Rail",
		texture = "cherry_wood_fence.png",
		inventory_image = "default_fence_rail_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^cherry_wood_fence.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "cherry:cherry_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})
