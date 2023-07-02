-----------------Moreblock
if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("redwood_tree", "tree", "redwood:redwood_tree", {
		description = "Redwood Tree",
	tiles = {"redwood_tree.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("redwood", "stone", "redwood:redwood", {
		description = "Redwood",
	tiles = {"redwood.png"},
	groups = {cracky = 2, flammable = 2, stone = 1, level = 1},
	sounds = default.node_sound_stone_defaults(),
	})



end
