
--require("styles")

-- pocket dimension generator gui
--[[local ToggleGUI = {}
ToggleGUI.name = "toggle-gui-1"
ToggleGUI.pfx = ToggleGUI.name .. "-"
ToggleGUI.resetButton = ToggleGUI.pfx .. "reset-button"
ToggleGUI.selectedSandboxDropdown = ToggleGUI.pfx .. "selected-sandbox-dropdown"
ToggleGUI.daytimeSlider = ToggleGUI.pfx .. "daytime-slider"
local BPSB = {}
BPSB.pfx = "bpsb-"


function ToggleGUI.Init(player)
  if player.gui.left[ToggleGUI.name] then
      return
  end

  local frame = player.gui.center.add {
    type = "frame",
    name = ToggleGUI.name,
    caption = { "gui." .. ToggleGUI.name },
    visible = false,
  }

  local innerFrame = frame.add {
    type = "frame",
    name = "innerFrame",
    direction = "vertical",
    style = "inside_shallow_frame_with_padding",
  }

  local topLineFlow = innerFrame.add {
    type = "flow",
    name = "topLineFlow",
    direction = "horizontal",
    style = "horizontal-flow",
  }

  topLineFlow.add {
    type = "sprite-button",
    name = ToggleGUI.resetButton,
    tooltip = { "gui-description." .. ToggleGUI.resetButton },
    style = "tool_button",
    sprite = "utility/reset_white",
  }

  local daylightFlow = innerFrame.add {
    type = "flow",
    name = "daylightFlow",
    direction = "horizontal",
    style = "horizontal-flow",
  }

  daylightFlow.add {
    type = "sprite",
    tooltip = { "gui-description." .. ToggleGUI.daytimeSlider },
    sprite = "utility/select_icon_white",
    resize_to_sprite = false,
    style = "button"
  }

  daylightFlow.add {
    type = "slider",
    name = ToggleGUI.daytimeSlider,
    value = 100,
    minimum_value = 2,
    maximum_value = 999,
    value_step = 1,
    style = "notched_slider",
  }.style.horizontally_stretchable = true

  ToggleGUI.Update(player)
end

function ToggleGUI.Destroy(player)
  if not player.gui.left[ToggleGUI.name] then
      return
  end
  player.gui.left[ToggleGUI.name].destroy()
end

function ToggleGUI.FindDescendantByName(instance, name)
  for _, child in pairs(instance.children) do
      if child.name == name then
          return child
      end
      local found = ToggleGUI.FindDescendantByName(child, name)
      if found then return found end
  end
end

function ToggleGUI.FindByName(player, name)
  return ToggleGUI.FindDescendantByName(player.gui.left[ToggleGUI.name], name)
end

function ToggleGUI.Update(player)
  if not player.gui.left[ToggleGUI.name] then
      return
  end

  ToggleGUI.FindByName(player, ToggleGUI.selectedSandboxDropdown).selected_index = global.players[player.index].selectedSandbox

  if Sandbox.IsPlayerInsideSandbox(player) then
      local playerData = global.players[player.index]

      player.set_shortcut_toggled(ToggleGUI.toggleShortcut, true)
      player.gui.left[ToggleGUI.name].visible = true

      local resetButton = ToggleGUI.FindByName(player, ToggleGUI.resetButton)
      if game.is_multiplayer
              and not player.admin
              and playerData.selectedSandbox ~= Sandbox.player
              and settings.global[Settings.onlyAdminsForceReset].value
      then
          resetButton.enabled = false
          resetButton.tooltip = { "gui-description." .. ToggleGUI.resetButton .. "-only-admins" }
      else
          resetButton.enabled = true
          resetButton.tooltip = { "gui-description." .. ToggleGUI.resetButton }
      end

      ToggleGUI.FindByName(player, ToggleGUI.daytimeSlider).slider_value = player.surface.daytime
  else
      player.set_shortcut_toggled(ToggleGUI.toggleShortcut, false)
      player.gui.left[ToggleGUI.name].visible = false
      ToggleGUI.FindByName(player, ToggleGUI.resetButton).enabled = false
  end
end

return ToggleGUI ]]

function pocket_dimension_generator_gui(player)
  local frame = player.gui.center.add{
    type = "frame",
    name = "pocket-dimension-generator-gui",
    visible = true,
  }

  local innerFrame = frame.add {
    type = "frame",
    name = "innerFrame",
    direction = "vertical",
    style = "inside_shallow_frame_with_padding",
    visible=true,
  }

  innerFrame.add {
    type = "slider",
    name = "dimension-width-slider",
    value = 50,
    minimum_value = 2,
    maximum_value = 200,
    value_step = 1,
    style = "notched_slider",
    visible=true,
  }.style.horizontally_stretchable = true
end

function button_create_dimension(player)
  local dimension_width=player.gui.dimension-width-slider.value
  local dimension_height=player.gui.dimension-width-slider.value
  create_dimension(dimension_width, dimension_height)
end
