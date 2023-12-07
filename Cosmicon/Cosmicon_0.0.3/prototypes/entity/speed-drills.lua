
require("__base__.prototypes.entity.pipecovers")
require("__base__.prototypes.entity.assemblerpipes")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local ent = "__Cosmicon__/graphics/entities"
local icon = "__Cosmicon__/graphics/icons"
local tec = "__Cosmicon__/graphics/technology"

data:extend({
-------------------------------------------------------------Speed-mining-drill-1 (3x3) (now is 4x4)
  {  -------Item
    type = "item",
    name = "speed-drill-1",
    icon = icon.."/speed-drill-1.png",
    icon_size = 32,
    scale = 0.5,
    subgroup = "extraction-machine",
    stack_size = 50,
    place_result = "speed-drill-1"
  },
  {  -------Technology
    type = "technology",
    name = "fast-drilling-1",
    icon = tec.."/fast-drilling-1.png", 
    icon_size = 32,
    effects = {
      {
      type = "unlock-recipe",
      recipe = "speed-drill-1"
      }
    },
    prerequisites = {"advanced-electronics-2","electric-engine"},
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
  {  -------Recipe
    type = "recipe",
    name = "speed-drill-1",
    energy_required = 15.0,
    ingredients = {
      {"steel-plate",30},
      {"processing-unit",15},
      {"electric-mining-drill",6}
    },
    enabled = false,
    result = "speed-drill-1",
    icon = icon.."/speed-drill-1.png",
    icon_size = 32,
    scale = 0.5,
    subgroup = "extraction-machine",
    order = "d",
  },
  {  -------Entity
    type = "mining-drill",
    name = "speed-drill-1",
    icon = icon.."/speed-drill-1.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "speed-drill-1"},
    max_health = 500,
    
    resource_categories = {"basic-solid"},
    collision_box = {{ -1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{ -2.0, -2.0}, {2.0, 2.0}},
    input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-2, 0} },
        { position = {2, 0} },
        { position = {0, 2} }
      }
    },
    working_sound ={
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.5
      },
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    mining_speed = 6,
    energy_source = {
      type = "electric",
      emissions_per_minute = 10,
      usage_priority = "secondary-input"
    },
    energy_usage = "170kW",
    resource_searching_radius = 3.99,
    vector_to_place_result = {0, -2.35},

    module_specification = {
      module_slots = 9
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},

    radius_visualisation_picture ={
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "mining-drill"

    graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 26, south = 26, west = 26 },


      ----------Animation--------
      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-N.png",
              line_length = 1,
              width = 98,
              --height = 122,
              --width = 97,
              height = 121,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -12),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-N.png",
                line_length = 1,
                width = 194,
                height = 242,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -12),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-N-output.png",
              line_length = 5,
              width = 38,
              height = 34,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-2, -44),
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-N-output.png",
                line_length = 5,
                width = 72,
                height = 66,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -44),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-N-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, -2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-N-shadow.png",
                line_length = 1,
                width = 274,
                height = 206,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, -3),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-E.png",
              line_length = 1,
              width = 97, --98
              height = 47, --50
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-E.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 26,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -10),
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-E-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(30, -11),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-E-shadow.png",
              line_length = 1,
              width = 138,
              height = 86,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-E-shadow.png",
                line_length = 1,
                width = 276,
                height = 170,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(20, 6),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-S.png",
              line_length = 1,
              --width = 98,
              --height = 122,
              width = 97,
              height = 120,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -7),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-S.png",
                line_length = 1,
                width = 194,
                height = 240,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-S-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-S-shadow.png",
                line_length = 1,
                width = 274,
                height = 204,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, 2),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-W.png",
              line_length = 1,
              --width = 98,
              --height = 50,
              width = 97,
              height = 47,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -33),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-W.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-30, -12),
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-W-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-31, -12),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-W-shadow.png",
              line_length = 1,
              width = 144,
              height = 86,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(14, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-W-shadow.png",
                line_length = 1,
                width = 282,
                height = 170,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(15, 6),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
      },  

      --[[shift_animation_waypoints =
      {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.7 - 0.6
        north = { {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.25}, {0, -0.5}, {0, -0.2}, {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.6}, {0, 0.3}, {0, -0.1}, {0, -0.4}, {0, 0}, {0, 0.3} },
        -- Bounds -0.6 - 0.4
        east = { {0, 0}, {0.4, 0}, {0.1, 0}, {-0.3, 0}, {-0.6, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0}, {0, 0}, {-0.35, 0}, {-0.6, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0} },
        -- Bounds -0.7 - 0.5
        south = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.5}, {0, 0.3}, {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.2}, {0, -0.6}, {0, -0.3}, {0, 0.1}, {0, 0.4}, {0, 0}, {0, -0.3} },
        -- Bounds -0.4 - 0.6
        west = { {0, 0}, {-0.4, 0}, {-0.1, 0}, {0.3, 0}, {0.6, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0}, {0, 0}, {0.35, 0}, {0.6, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0} },
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-N-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -44),
                hr_version =
                {
                  priority = "high",
                  filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-N-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 58,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(1, -44),
                  scale = 0.5,
                }
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil,
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-E-smoke.png",
                line_length = 5,
                width = 28,
                height = 28,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                hr_version =
                {
                  priority = "high",
                  filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-E-smoke.png",
                  line_length = 5,
                  width = 52,
                  height = 56,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(25, -12),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-S-smoke.png",
                  line_length = 5,
                  width = 48,
                  height = 36,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5,
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-26, -12),
                hr_version =
                {
                  priority = "high",
                  filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-W-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 54,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-25, -11),
                  scale = 0.5,
                }
              }
            }
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            priority = "high",
            filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-E-front.png",
            line_length = 1,
            width = 104,
            height = 93, -- 94
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(2, 2),
            hr_version =
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-E-front.png",
              line_length = 1,
              width = 208,
              height = 186,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(3, 2),
              scale = 0.5,
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-S-output.png",
                line_length = 5,
                --width = 42,
                --height = 28,
                width = 205/5,
                height = 28,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, 34),
                hr_version =
                {
                  priority = "high",
                  filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-S-output.png",
                  line_length = 5,
                  width = 82,
                  height = 56,
                  frame_count = 5,
                  animation_speed = electric_drill_animation_speed,
                  shift = util.by_pixel(-1, 34),
                  scale = 0.5,
                }
              },
              {
                priority = "high",
                filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-S-front.png",
                line_length = 1,
                --width = 86,
                --height = 24,
                width = 86,
                height = 21,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 12),
                hr_version =
                {
                  priority = "high",
                  filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-S-front.png",
                  line_length = 1,
                  width = 172,
                  height = 42,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 13),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            priority = "high",
            filename = "__big-mining-drill__/graphics/entity/big-mining-drill/big-mining-drill-W-front.png",
            line_length = 1,
            --width = 106,
            --height = 94,
            width = 105,
            height = 95,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(-4, 1),
            hr_version =
            {
              priority = "high",
              filename = "__big-mining-drill__/graphics/entity/big-mining-drill/hr-big-mining-drill-W-front.png",
              line_length = 1,
              width = 210,
              height = 190,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-4, 1),
              scale = 0.5,
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation(),
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        {
          always_draw = true,
          --apply_tint = "status",
          light =  {
            intensity = 0.3,
            size = 10,
            color={r=1, g=1, b=1},
            minimum_darkness = 0.01
          },
          north_position = { 0, -1},
          east_position =  { 0, -1},
          south_position = { 0, -1},
          west_position =  { 0, -1},
        },
        electric_mining_drill_secondary_light
      }  ]]
    },

  },

------------------------------------------------------------Speed-mining-drill-2 (5x5)

------------------------------------------------------------Alien-mining-drill (5x5)

-------------------------------------------------------------Quarry (very big)

})

local amd = data.raw["mining-drill"]["big-mining-drill"]
local amdr = data.raw["corpse"]["big-mining-drill-remnants"]
local function scale_recursive(table, scale)
  for k, v in pairs(table) do
    if k == "width" then
      table.scale = (table.scale or 1) * scale
    elseif k == "shift" then
      table[k] = {v[1]*scale, v[2]*scale + 4/32}
    elseif type(v) == "table" then
      scale_recursive(v, scale)
    end
  end
end
for _, table in pairs({amd.integration_patch, amd.graphics_set, amd.wet_mining_graphics_set, amdr.animation}) do
  scale_recursive(table, 1.5)
end
local function table_shift(table, shift)
  for k, v in pairs(table) do
    if k == "shift" or k == "green" or k == "red" then
      table[k] = {v[1] + shift[1], v[2] + shift[2]}
    elseif type(v) == "table" then
      table_shift(v, shift)
    end
  end
end
for _, table in pairs({amd.circuit_wire_connection_points[1], amd.circuit_connector_sprites[1]}) do
  table_shift(table, {-0.5,-1.5}) -- N
end
for _, table in pairs({amd.circuit_wire_connection_points[2], amd.circuit_connector_sprites[2]}) do
  table_shift(table, {0.65,-0.55}) -- E
end
for _, table in pairs({amd.circuit_wire_connection_points[3], amd.circuit_connector_sprites[3]}) do
  table_shift(table, {1-1.5,-0.1}) -- S
end
for _, table in pairs({amd.circuit_wire_connection_points[4], amd.circuit_connector_sprites[4]}) do
  table_shift(table, {-0.58,-0.4}) -- W
end