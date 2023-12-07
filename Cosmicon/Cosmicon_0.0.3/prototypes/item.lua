
local icon = "__Cosmicon__/graphics/icons"

data:extend ({
  {----------------Speed-Furnace-1
    type = "item",
    name = "speed-furnace-1",
    icon = icon.."/speed-furnace-1.png",
    icon_size=32,
    scale = 0.5,
    subgroup = "smelting-machine",
    stack_size = 50,
    place_result = "speed-furnace-1",
  },

  {----------------Pocket-Dimension-Generator
    type="item",
    name = "pocket-dimension-generator",
    icon = icon.."/pocket-dimension-generator.png",
    icon_size=64,
    scale = 0.5,
    subgroup = "cosmicon-special-objects",
    stack_size = 10,
    --place_result = "pocket-dimension-generator",
  },
})