local seafloor_pump = data.raw["offshore-pump"] and data.raw["offshore-pump"]["seafloor-pump"]

if seafloor_pump then
	seafloor_pump.adjacent_tile_collision_test = nil
	seafloor_pump.adjacent_tile_collision_mask = nil
	seafloor_pump.adjacent_tile_collision_box = nil
	seafloor_pump.placeable_position_visualization = nil
	seafloor_pump.flags = {"placeable-neutral", "player-creation"}
end
