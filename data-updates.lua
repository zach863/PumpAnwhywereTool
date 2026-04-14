if data.raw["offshore-pump"] and data.raw["offshore-pump"]["seafloor-pump"] then
	data.raw["offshore-pump"]["seafloor-pump"].adjacent_tile_collision_test = { "ground-tile", "water-tile", "object-layer" }
	data.raw["offshore-pump"]["seafloor-pump"].adjacent_tile_collision_mask = nil
	data.raw["offshore-pump"]["seafloor-pump"].placeable_position_visualization = nil
	data.raw["offshore-pump"]["seafloor-pump"].flags = {"placeable-neutral", "player-creation"}
	data.raw["offshore-pump"]["seafloor-pump"].adjacent_tile_collision_box = { { -0.5, -0.25}, {0.5, 0.25} }
end