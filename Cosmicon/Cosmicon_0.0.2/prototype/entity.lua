data:extend{

 -- ПЕЧЬ 1 \/\/

    {
        type = "furnace",
        name = "speed-furnace-1",
        icon = "__Cosmicon__/graphics/speed-furnace-1.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "speed-furnace-1"},
        max_health = 400,
        --corpse = "electric-furnace-remnants",
        --dying_explosion = "electric-furnace-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 80
          }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        --damaged_trigger_effect = hit_effects.entity(),
        module_specification =
        {
          module_slots = 4,
          module_info_icon_shift = {0, 0.8}
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
        --vehicle_impact_sound = sounds.generic_impact,
        --open_sound = sounds.machine_open,
        --close_sound = sounds.machine_close,
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
                    filename = "__Cosmicon__/graphics/speed-furnace1-entity.png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    frame_count = 1,
                    shift = {0, 0},
                },
                working={
                    filename = "__Cosmicon__/graphics/speed-furnace1-entity.png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    frame_count = 1,
                    shift = {0, 0},
                }
            }
        },
        fast_replaceable_group = "furnace",
        --[[water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        }]]
    },
	
 -- ПЕЧЬ 2 \/\/	
	
{
        type = "furnace",
        name = "speed-furnace-2",
        icon = "__Cosmicon__/graphics/speed-furnace-1.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "speed-furnace-2"},
        max_health = 400,
        resistances =
        {
          {
            type = "fire",
            percent = 80
          }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        module_specification =
        {
          module_slots = 6,
          module_info_icon_shift = {0, 0.8}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"smelting"},
        result_inventory_size = 1,
        crafting_speed = 25,
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
                    filename = "__Cosmicon__/graphics/speed-furnace1-entity.png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    frame_count = 1,
                    shift = {0, 0},
                },
                working={
                    filename = "__Cosmicon__/graphics/speed-furnace1-entity.png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    frame_count = 1,
                    shift = {0, 0},
                }
            }
        },
        fast_replaceable_group = "furnace",
        --[[water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5
          },
          rotate = false,
          orientation_to_variation = false
        }]]
    },
	
 -- Drill \/ \/	
 
 
    {
        type = "mining-drill",
        name = "speed-drill-1",
        icon = "__Cosmicon__/graphics/speed-drill1-entity.png",
        icon_size = 128, icon_mipmaps = 4,
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
        working_sound =
        {
        sound =
        {
            filename = "__base__/sound/electric-mining-drill.ogg",
            volume = 0.5
        },
        audible_distance_modifier = 0.6,
        fade_in_ticks = 4,
        fade_out_ticks = 20
        },
        
            animation={
                layers={
                    basic={
                        filename = "__Cosmicon__/graphics/speed-drill1-entity.png",
                        priority = "high",
                        width = 128,
                        height = 128,
                        frame_count = 1,
                        shift = {0, 0},
                    },
                    working={
                        filename = "__Cosmicon__/graphics/speed-drill1-entity.png",
                        priority = "high",
                        width = 128,
                        height = 128,
                        frame_count = 1,
                        shift = {0, 0},
                    }
                }
            },

        mining_speed = 6,
        energy_source = {
            type = "electric",
            emissions_per_minute = 10,
            usage_priority = "secondary-input"
        },
        energy_usage = "195kW",
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
    },
  }
	 