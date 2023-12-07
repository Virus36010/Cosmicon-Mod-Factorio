
require("control_dimension")
require("control_gui")

script.on_init(function()
  create_dimension(10, 10)
end)

--[[script.on_event(defines.events.on_gui_opened, function(event)
  if event.on_gui_opened.name=="pocket-dimension-generator-gui" then
    pocket_dimension_generator_gui(event.player_index)
  end
end)

script.on_event(defines.events.on_gui_click, function(event)
  if event.on_gui_click.element=="button-create-dimension" then
    button_create_dimension(event.player_index)
  end
end) 
]]