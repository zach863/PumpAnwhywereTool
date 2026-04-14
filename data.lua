local function make_pump_placeable_anywhere(name)
  local pump = data.raw["offshore-pump"] and data.raw["offshore-pump"][name]
  if not pump then return end

  -- Factorio 2.0 removed adjacent_tile_collision_* from offshore pumps.
  -- Clearing tile buildability rules removes the shoreline requirement.
  if pump.tile_buildability_rules ~= nil then
    pump.tile_buildability_rules = {}
  else
    -- Backwards compatibility with older Factorio versions.
    pump.adjacent_tile_collision_test = { "ground-tile", "water-tile", "object-layer" }
    pump.adjacent_tile_collision_mask = nil
    pump.adjacent_tile_collision_box = { { -0.5, -0.25 }, { 0.5, 0.25 } }
  end

  pump.placeable_position_visualization = nil
  pump.flags = { "placeable-neutral", "player-creation" }
end

make_pump_placeable_anywhere("offshore-pump")
