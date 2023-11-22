
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local icon = "__Cosmicon-Solar-Panels__/graphics/icons"
local ent = "__Cosmicon-Solar-Panels__/graphics/entities"
local tec = "__Cosmicon-Solar-Panels__/graphics/technology"

function accumulator_picture_2(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = ent.."/accumulator-2.png",
        priority = "high",
        width = 66,
        height = 94,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -10),
        tint = tint,
        animation_speed = 0.5,
        hr_version =
        {
          filename = ent.."/hr-accumulator-2.png",
          priority = "high",
          width = 130,
          height = 189,
          repeat_count = repeat_count,
          shift = util.by_pixel(0, -11),
          tint = tint,
          animation_speed = 0.5,
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
        priority = "high",
        width = 120,
        height = 54,
        repeat_count = repeat_count,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
          priority = "high",
          width = 234,
          height = 106,
          repeat_count = repeat_count,
          shift = util.by_pixel(29, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
end

function accumulator_charge_2()
  return
  {
    layers =
    {
      accumulator_picture_2({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
        priority = "high",
        width = 90,
        height = 100,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(0, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(0, -22),
          scale = 0.5
        }
      }
    }
  }
end

function accumulator_reflection_2()
  return
  {
    pictures =
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 50),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
  }
end

function accumulator_discharge_2()
  return
  {
    layers =
    {
      accumulator_picture_2({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
        priority = "high",
        width = 88,
        height = 104,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(-2, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
          priority = "high",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }
  }
end


function accumulator_picture_3(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = ent.."/accumulator-3.png",
        priority = "high",
        width = 66,
        height = 94,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -10),
        tint = tint,
        animation_speed = 0.5,
        hr_version =
        {
          filename = ent.."/hr-accumulator-3.png",
          priority = "high",
          width = 130,
          height = 189,
          repeat_count = repeat_count,
          shift = util.by_pixel(0, -11),
          tint = tint,
          animation_speed = 0.5,
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
        priority = "high",
        width = 120,
        height = 54,
        repeat_count = repeat_count,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
          priority = "high",
          width = 234,
          height = 106,
          repeat_count = repeat_count,
          shift = util.by_pixel(29, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
end

function accumulator_charge_3()
  return
  {
    layers =
    {
      accumulator_picture_3({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
        priority = "high",
        width = 90,
        height = 100,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(0, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(0, -22),
          scale = 0.5
        }
      }
    }
  }
end

function accumulator_reflection_3()
  return
  {
    pictures =
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 50),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
  }
end

function accumulator_discharge_3()
  return
  {
    layers =
    {
      accumulator_picture_3({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
        priority = "high",
        width = 88,
        height = 104,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(-2, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
          priority = "high",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }
  }
end


function accumulator_picture_4(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = ent.."/accumulator-4.png",
        priority = "high",
        width = 66,
        height = 94,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -10),
        tint = tint,
        animation_speed = 0.5,
        hr_version =
        {
          filename = ent.."/hr-accumulator-4.png",
          priority = "high",
          width = 130,
          height = 189,
          repeat_count = repeat_count,
          shift = util.by_pixel(0, -11),
          tint = tint,
          animation_speed = 0.5,
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
        priority = "high",
        width = 120,
        height = 54,
        repeat_count = repeat_count,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
          priority = "high",
          width = 234,
          height = 106,
          repeat_count = repeat_count,
          shift = util.by_pixel(29, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
end

function accumulator_charge_4()
  return
  {
    layers =
    {
      accumulator_picture_4({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
        priority = "high",
        width = 90,
        height = 100,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(0, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(0, -22),
          scale = 0.5
        }
      }
    }
  }
end

function accumulator_reflection_4()
  return
  {
    pictures =
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 50),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
  }
end

function accumulator_discharge_4()
  return
  {
    layers =
    {
      accumulator_picture_4({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
        priority = "high",
        width = 88,
        height = 104,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(-2, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
          priority = "high",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          draw_as_glow = true,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }
  }
end


data:extend({
  -----------------------------------Accumulator-2
  {-----------------Item
    type = "item",
    name = "accumulator-2",
    icon = icon.."/accumulator-2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "solar-panels",
    place_result = "accumulator-2",
    stack_size = 50
  },
  {-----------------Recipe
    type = "recipe",
    name = "accumulator-2",
    icon = icon.."/accumulator-2.png",
    icon_size = 64, scale = 0.5,
    subgroup = "solar-panels",
    energy_required = 15,
    enabled = false,
    order = "eb",
    ingredients = {
      {"iron-plate", 30},
      {"battery", 10},
      {"accumulator",3}
    },
    result = "accumulator-2"
  },
  {-----------------Technology
    type = "technology",
    name = "electric-energy-accumulators-2",
    icon_size = 256, icon_mipmaps = 1,
    icon = tec.."/electric-energy-accumulators-2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "accumulator-2"
      }
    },
    prerequisites = {"electric-energy-accumulators"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
  },
  {-----------------Entity
    type = "accumulator",
    name = "accumulator-2",
    icon = icon.."/accumulator-2.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator-2"},
    max_health = 200,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    fast_replaceable_group = "accumulator",
    next_upgrade="accumulator-3",
    energy_source = {
      type = "electric",
      buffer_capacity = "15MJ",
      usage_priority = "tertiary",
      input_flow_limit = "900kW",
      output_flow_limit = "900kW"
    },
    picture = accumulator_picture_2(),
    charge_animation = accumulator_charge_2(),
    water_reflection = accumulator_reflection_2(),

    charge_cooldown = 30,
    discharge_animation = accumulator_discharge_2(),
    discharge_cooldown = 60,
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.4
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.35
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },

  -----------------------------------Accumulator-3
  {-----------------Item
    type = "item",
    name = "accumulator-3",
    icon = icon.."/accumulator-3.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "solar-panels",
    place_result = "accumulator-3",
    stack_size = 50
  },
  {-----------------Recipe
    type = "recipe",
    name = "accumulator-3",
    icon = icon.."/accumulator-3.png",
    icon_size = 64, scale = 0.5,
    subgroup = "solar-panels",
    energy_required = 15,
    enabled = false,
    order = "ec",
    ingredients = {
      {"iron-plate", 40},
      {"battery", 15},
      {"accumulator-2", 3}
    },
    result = "accumulator-3"
  },
  {-----------------Technology
    type = "technology",
    name = "electric-energy-accumulators-3",
    icon_size = 256, icon_mipmaps = 1,
    icon = tec.."/electric-energy-accumulators-3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "accumulator-3"
      }
    },
    prerequisites = {"electric-energy-accumulators-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 35
    },
  },
  {-----------------Entity
    type = "accumulator",
    name = "accumulator-3",
    icon = icon.."/accumulator-3.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator-3"},
    max_health = 200,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    fast_replaceable_group = "accumulator",
    next_upgrade="accumulator-4",
    energy_source = {
      type = "electric",
      buffer_capacity = "45MJ",
      usage_priority = "tertiary",
      input_flow_limit = "2700kW",
      output_flow_limit = "2700kW"
    },
    picture = accumulator_picture_3(),
    charge_animation = accumulator_charge_3(),
    water_reflection = accumulator_reflection_3(),

    charge_cooldown = 30,
    discharge_animation = accumulator_discharge_3(),
    discharge_cooldown = 60,
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.4
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.35
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },

  -----------------------------------Accumulator-4
  {-----------------Item
    type = "item",
    name = "accumulator-4",
    icon = icon.."/accumulator-4.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "solar-panels",
    place_result = "accumulator-4",
    stack_size = 50
  },
  {-----------------Recipe
    type = "recipe",
    name = "accumulator-4",
    icon = icon.."/accumulator-4.png",
    icon_size = 64, scale = 0.5,
    subgroup = "solar-panels",
    energy_required = 15,
    enabled = false,
    order = "ed",
    ingredients = {
      {"iron-plate", 40},
      {"battery", 15},
      {"accumulator-3", 3}
    },
    result = "accumulator-4"
  },
  {-----------------Technology
    type = "technology",
    name = "electric-energy-accumulators-4",
    icon_size = 256, icon_mipmaps = 1,
    icon = tec.."/electric-energy-accumulators-4.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "accumulator-4"
      }
    },
    prerequisites = {"electric-energy-accumulators-3", "production-science-pack"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45
    },
  },
  {-----------------Entity
    type = "accumulator",
    name = "accumulator-4",
    icon = icon.."/accumulator-4.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator-4"},
    max_health = 200,
    fast_replaceable_group = "accumulator",
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "135MJ",
      usage_priority = "tertiary",
      input_flow_limit = "8100kW",
      output_flow_limit = "8100kW"
    },
    picture = accumulator_picture_4(),
    charge_animation = accumulator_charge_4(),
    water_reflection = accumulator_reflection_4(),

    charge_cooldown = 30,
    discharge_animation = accumulator_discharge_4(),
    discharge_cooldown = 60,
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 0.4
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.35
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },

  -----------------------------------Large-energy-storage (future)
  --size = 6x6 tiles
  --capacity = 500 000 kw or more
  --costs many materials

})
