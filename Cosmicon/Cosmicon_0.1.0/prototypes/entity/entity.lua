
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local ent = "__Cosmicon__/graphics/entities"
local icon = "__Cosmicon__/graphics/icons"

local function empty()
	return {
		filename = "__Cosmicon__/graphics/empty.png",
		priority = "high",
		width = 1,
		height = 1,
    frame_count = 1,
	}
end

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
    subgroup="smelting-machine",
    order="d",
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
    type="storage-tank",
    name="pocket-dimension-generator-1",
    icon=icon.."/pocket-dimension-generator-1.png",
    icon_size=64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 4, result = "pocket-dimension-generator-1"},
    subgroup="smelting-machine",
    order="d",
    max_health = 3000,
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1
    },
    energy_usage = "900kW",
    pictures={
      picture={
        layers={
          {
            filename = ent.."/pocket-dimension-generator-1.png",
            width = 160,
            height = 192,
            shift = {0, -0.5},
            frame_count = 1,
          },
        }
      },
      fluid_background = empty(),
			window_background = empty(),
			flow_sprite = empty(),
			gas_flow = empty(),
    },
    fluid_box={
      base_area = 1,
			pipe_covers = pipecoverspictures(),
			pipe_connections = {},
    },
    window_bounding_box = {{0,0},{0,0}},
    flow_length_in_ticks = 1,
  },]]
})