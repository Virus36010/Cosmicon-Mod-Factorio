
local generators = 1

function pocket_dimension_generator_1_gui(player)
  local frame = player.gui.center.add{
    type = "frame",
    name = "pocket_dimension_generator_1_gui_"..generators,
    visible = false,
  }

  local innerFrame = frame.add{
    type = "frame",
    name = "innerFrame",
    direction = "vertical",
    style = "inside_shallow_frame_with_padding",
  }

  innerFrame.add{
    type = "slider",
    --type="button",
    --numeric=true,
    name = "dimension_size_slider",
    value = 10,
    minimum_value = 5,
    maximum_value = 200,
    value_step = 1,
    style = "notched_slider",
  }.style.horizontally_stretchable = true

  innerFrame.add{
    type="button",
    name="button-create-dimension",
    style="button",
    text="Create dimension"
  }

  frame.add{
    type="button",
    name="button-PDK-gui-off",
  }
end

function gui_PDK_on(player, gui_num)
  local PDK = player.gui.center.pocket_dimension_generator_1_gui_1
  PDK.visible=true
end

function gui_PDK_off(player, gui_num)
  local PDK = player.gui.center.pocket_dimension_generator_1_gui_1
  PDK.visible=false
end