
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local ent = "__Cosmicon__/graphics/entities"
local icon = "__Cosmicon__/graphics/icons"

data:extend({
  {----------------Speed-Furnace-1
    type = "furnace",
    name = "speed-furnace-1",
    icon = icon.."/speed-furnace-1.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "speed-furnace-1"},
    max_health = 400,
    fast_replaceable_group = "furnace",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 6,
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    crafting_speed = 10,
    energy_usage = "550kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1
    },

    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.6
      },
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    animation={
      layers={
        basic={
          filename = ent.."/speed-furnace-1.png",
          priority = "high",
          width = 201,
          height = 194,
          frame_count = 1,
          shift = {0, 0},
          scale = 0.5
        },
        working={
          filename = ent.."/speed-furnace-1.png",
          priority = "high",
          width = 201,
          height = 194,
          frame_count = 1,
          shift = {0, 0},
          scale = 0.5
        }
      }
    },
    
  },

  --[[{----------------Pocket-Dimension-Generator
    type=""
  }, ]]
})