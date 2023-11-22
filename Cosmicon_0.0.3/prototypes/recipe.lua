
local icon = "__Cosmicon__/graphics/icons"

data:extend ({
  {----------------Speed-Furnace-1
    type = "recipe",
    name = "speed-furnace-1",
    energy_required = 15.0,
    ingredients = {
      {"steel-plate",60},
      {"electric-engine-unit",10},
      {"processing-unit",15}
    },
    enabled = false,
    result = "speed-furnace-1",
    icon = icon.."/speed-furnace-1.png",
    icon_size = 32,
    scale = 0.5,
    subgroup = "smelting-machine",
    order = "d",
  },

  {----------------Pocket-Dimension-Generator
    type = "recipe",
    name = "pocket-dimension-generator",
    energy_required = 60.0,
    ingredients = {
      {"steel-plate",60},
      {"electric-engine-unit",10},
      {"processing-unit",15}
    },
    enabled = false,
    result = "pocket-dimension-generator",
    icon = icon.."/pocket-dimension-generator.png",
    icon_size = 64,
    scale = 0.5,
    subgroup = "cosmicon-special-objects",
    order = "a",
  },
  
})