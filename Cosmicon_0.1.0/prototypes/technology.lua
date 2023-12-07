
--[[
{"automation-science-pack", 1},
{"logistic-science-pack", 1},
{"chemical-science-pack", 1},
{"military-science-pack", 1},
{"production-science-pack", 1},
{"utility-science-pack", 1},
{"space-science-pack", 1},
]]

local tec = "__Cosmicon__/graphics/technology"

data:extend ({
  {----------------Advanced-Material-Processing-3
    type = "technology",
    name = "advanced-material-processing-3",
    icon = tec.."/advanced-material-processing-3.png", 
    icon_size = 32,
    effects = {
      {
      type = "unlock-recipe",
      recipe = "speed-furnace-1"
      }
    },
    prerequisites = {"advanced-electronics-2","electric-engine","utility-science-pack"},
    unit = {
      count = 50,
      ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1}
      },
      time = 15
    } 
  },

  --[[{----------------Pocket-Dimensions
    type = "technology",
    name = "pocket-dimensions-1",
    icon = tec.."/pocket-dimension-generator-1.png", 
    icon_size = 32,
    effects = {
      {
      type = "unlock-recipe",
      recipe = "pocket-dimension-generator-1"
      }
    },
    prerequisites = {"advanced-electronics-2","electric-engine","utility-science-pack"},
    unit = {
      count = 300,
      ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1},
      {"utility-science-pack", 1},
      {"space-science-pack", 1},
      },
      time = 45
    } 
  },]]

})