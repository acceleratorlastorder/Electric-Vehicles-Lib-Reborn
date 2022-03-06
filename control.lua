require("src.main")
require("remote")

function on_init()
  -- Working set
  
  -- List of all known vehicles with an equipment grid
  -- [unit-number] = entity
  global.e_vehicles = { }
  -- List of all trains currently slowing down. Used for regenerative braking.
  -- [*] = braking data
  global.braking_trains = { }
  -- Dictinary of all non-train vehicles currently slowing down. Used for regenerative braking.
  -- [unit-number] = braking data
  global.braking_vehicles = { }
  
  -- Passive prototype data
  
  -- Dictionary of recognized transformer equipment
  global.transformers = { }
  -- Dictionary of recognized regenerating brakes equipment
  -- [name] = efficiency
  global.brakes = { }
end



function ev_on_configuration_changed(data)
  ev_validate_prototypes()
  ev_validate_entities()
  global.ev_effectivity={}
end


--script.on_init(on_init)
--script.on_load(rebuild_caches)
--script.on_configuration_changed(on_configuration_changed)

--script.on_event(defines.events.on_built_entity, on_built_entity)
--script.on_event(defines.events.on_entity_died, ev_on_entity_died)
--script.on_event(defines.events.on_player_placed_equipment, ev_on_player_placed_equipment)
--script.on_event(defines.events.on_player_removed_equipment, ev_on_player_removed_equipment)
--script.on_event(defines.events.on_pre_player_mined_item, ev_on_pre_player_mined_item) -- deprecated?
--script.on_event(defines.events.on_robot_pre_mined, ev_on_robot_pre_mined)
--script.on_event(defines.events.on_tick, ev_on_tick)
--script.on_event(defines.events.on_train_changed_state, ev_on_train_changed_state)
