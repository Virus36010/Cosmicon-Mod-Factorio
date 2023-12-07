
require("control_dimension")
require("control_gui")

script.on_init(function()
  create_dimension(10, 10)
end)

script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == "pocket-dimension-generator-1" then
    pocket_dimension_generator_1_gui(game.players[event.player_index])
    gui_PDK_on(game.players[event.player_index], 1)
  end
end)

script.on_event(defines.events.on_gui_click, function(event)
  if event.element.name=="button-create-dimension" then
    create_dimension(game.players[event.player_index].gui.center.pocket_dimension_generator_1_gui_1.dimension_size_slider.value, game.players[event.player_index].gui.center.pocket_dimension_generator_1_gui_1.dimension_size_slider.value)
  end
end) 

script.on_event(defines.events.on_gui_click, function(event)
  if event.element.name=="button-PDK-gui-off" then
    gui_PDK_off(game.players[event.player_index], 1)
  end
end)

-----------------------------------------------------------------------------------

--require "defines"
require "util"

events = defines.events
events.machine_opened = script.generate_event_name()

script.on_init(function()
  if global.open == nil then
    global.open = false;
  end
end)

script.on_event(events.on_tick, function(event)
  openinv = game.players[event.player_index].opened
    
  if openinv == nil then
    global.open = false;
  elseif openinv ~= nil and openinv.name == "pocket-dimension-generator-1" and global.open == false then
    global.open = true;
    game.raise_event(events.machine_opened, {entity = openinv})
  end  
end)

script.on_event({ events.machine_opened}, function(event)
  pocket_dimension_generator_1_gui(game.players[event.player_index])
  gui_PDK_on(game.players[event.player_index], 1)
end)

remote.add_interface("machine_opened", {
  event = function()
    return events.machine_opened
  end
})

-----------------------------------------------------------------------------------
