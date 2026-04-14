local offshore_pump = data.raw["offshore-pump"] and data.raw["offshore-pump"]["offshore-pump"]

if offshore_pump then
	offshore_pump.adjacent_tile_collision_test = nil
	offshore_pump.adjacent_tile_collision_mask = nil
	offshore_pump.adjacent_tile_collision_box = nil
	offshore_pump.placeable_position_visualization = nil
	offshore_pump.flags = {"placeable-neutral", "player-creation"}
end
