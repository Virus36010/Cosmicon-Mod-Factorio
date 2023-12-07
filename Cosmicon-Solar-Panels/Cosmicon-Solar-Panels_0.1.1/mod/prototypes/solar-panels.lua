data:extend({
    ---------------------------------------Flat-solar-panel-1
    {------------Item
        type="item",
        name = "flat-solar-panel-1",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-1.png",
        icon_size=32,
        subgroup = "solar-panels",
        stack_size = 100,
        place_result="flat-solar-panel-1",
    },
    {------------Recipe
        type="recipe",
        name="flat-solar-panel-1",
        energy_required = 5.0,
        ingredients = {
            {"steel-plate",18},
            {"processing-unit",2},
            {"solar-panel",1}
        },
        enabled = false,
        results ={{"flat-solar-panel-1",9}},
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-1.png",
        icon_size = 32,
        subgroup = "solar-panels",
        order = "ab",
    },
    --[[------------!!doesnt work!!  flat solar panel like tile
    {------------Entity
        type = "tile",
        name = "flat-solar-panel-1",
        order = "a",
        needs_correction = false,
        minable = {mining_time = 0.1, result = "flat-solar-panel-1"},
        collision_mask = {"ground-tile"},
        walking_speed_modifier = 1.0,
        layer = 63,
        transition_overlay_layer_offset = 2,
        decorative_removal_probability = 0.25,
        flat_solar_panel_production = "6kW",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        variants={
            main={
                {
                    picture = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-1.png",
                    count = 1,
                    size = 1
                },
            },
            side={
                picture = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-1-borders.png",
                count = 2
            },
            inner_corner={
                picture = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-1-borders.png",
                count = 3
            },
            outer_corner={
                picture = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-1-borders.png",
                count = 4
            },
        },
        map_color={r=63, g=61, b=59},
        pollution_absorption_per_second = 0,
    },   ]]
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-1",
        production = "6kW",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-1.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-1"},
        max_health = 100,
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        collision_mask = {
            "floor-layer",
            "object-layer",
            "water-tile",
            --"ground-tile"
          },
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        picture={
            filename = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-1.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0}
        }
    },


    ---------------------------------------Solar-panel-2
    {------------Item
        type="item",
        name = "solar-panel-2",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-2.png",
        icon_size=64,
        scale = 0.5,
        subgroup = "solar-panels",
        stack_size = 50,
        place_result = "solar-panel-2"
    },
    {------------Recipe
        type="recipe",
        name = "solar-panel-2",
        energy_required = 20.0,
        ingredients = {
            {"steel-plate",60},
            {"electric-engine-unit",10},
            {"processing-unit",15},
            {"solar-panel",3}
        },
        enabled = false,
        result = "solar-panel-2",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-2.png",
        icon_size = 64,
        scale = 0.5,
        subgroup = "solar-panels",
        order = "ba",
    },
    {------------Technology
        type="technology",
        name = "solar-energy-2",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/technology/solar-energy-2.png", 
        icon_size = 32,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "solar-panel-2"
            },
            {
                type = "unlock-recipe",
                recipe = "flat-solar-panel-2"
            },
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
    {------------Entity
        type="solar-panel",
        name="solar-panel-2",
        production = "180kW",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-2.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "solar-panel-2"},
        max_health = 400,
        fast_replaceable_group = "solar-panel",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },

        picture={
            filename = "__Cosmicon-Solar-Panels__/mod/graphics/entities/solar-panel-2-entity.png",
            priority = "high",
            width = 116,
            height = 112,
            frame_count = 1,
            shift = {0, 0}
        }
    },
    ---------------------------------------Flat-solar-panel-2
    {------------Item
        type="item",
        name = "flat-solar-panel-2",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-2.png",
        icon_size=32,
        subgroup = "solar-panels",
        stack_size = 100,
        place_result="flat-solar-panel-2",
    },
    {------------Recipe
        type="recipe",
        name="flat-solar-panel-2",
        energy_required = 5.0,
        ingredients = {
            {"steel-plate",18},
            {"processing-unit",2},
            {"solar-panel-2",1}
        },
        enabled = false,
        results ={{"flat-solar-panel-2",9}},
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-2.png",
        icon_size = 32,
        subgroup = "solar-panels",
        order = "bb",
    },
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-2",
        production = "19kW",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-2.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-2"},
        max_health = 100,
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        collision_mask = {
            "floor-layer",
            "object-layer",
            "water-tile",
            --"ground-tile"
          },
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        picture={
            filename = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-2.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0}
        }
    },


    ---------------------------------------Solar-panel-3
    {------------Item
        type="item",
        name = "solar-panel-3",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-3.png",
        icon_size=64,
        scale = 0.5,
        subgroup = "solar-panels",
        stack_size = 50,
        place_result = "solar-panel-3"
    },
    {------------Recipe
        type="recipe",
        name = "solar-panel-3",
        energy_required = 20.0,
        ingredients = {
            {"steel-plate",60},
            {"electric-engine-unit",10},
            {"processing-unit",15},
            {"solar-panel-2",3}
        },
        enabled = false,
        result = "solar-panel-3",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-3.png",
        icon_size = 64,
        scale = 0.5,
        subgroup = "solar-panels",
        order = "ca",
    },
    {------------Technology
        type="technology",
        name = "solar-energy-3",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/technology/solar-energy-3.png", 
        icon_size = 32,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "solar-panel-3"
            },
            {
                type = "unlock-recipe",
                recipe = "flat-solar-panel-3"
            },
        },
        prerequisites = {"solar-energy-2"},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 15
        } 
    },
    {------------Entity
        type="solar-panel",
        name="solar-panel-3",
        production = "540kW",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-3.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "solar-panel-3"},
        max_health = 400,
        fast_replaceable_group = "solar-panel",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },

        picture={
            filename = "__Cosmicon-Solar-Panels__/mod/graphics/entities/solar-panel-3-entity.png",
            priority = "high",
            width = 116,
            height = 112,
            frame_count = 1,
            shift = {0, 0},
        }
    },
    ---------------------------------------Flat-solar-panel-3
    {------------Item
        type="item",
        name = "flat-solar-panel-3",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-3.png",
        icon_size=32,
        subgroup = "solar-panels",
        stack_size = 100,
        place_result="flat-solar-panel-3",
    },
    {------------Recipe
        type="recipe",
        name="flat-solar-panel-3",
        energy_required = 5.0,
        ingredients = {
            {"steel-plate",18},
            {"processing-unit",2},
            {"solar-panel-3",1}
        },
        enabled = false,
        results ={{"flat-solar-panel-3",9}},
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-3.png",
        icon_size = 32,
        subgroup = "solar-panels",
        order = "cb",
    },
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-3",
        production = "58kW",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-3.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-3"},
        max_health = 100,
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        collision_mask = {
            "floor-layer",
            "object-layer",
            "water-tile",
            --"ground-tile"
        },
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        picture={
            filename = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-3.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0}
        }
    },


    ---------------------------------------Solar-panel-4
    {------------Item
        type="item",
        name = "solar-panel-4",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-4.png",
        icon_size=64,
        scale = 0.5,
        subgroup = "solar-panels",
        stack_size = 50,
        place_result = "solar-panel-4"
    },
    {------------Recipe
        type="recipe",
        name = "solar-panel-4",
        energy_required = 20.0,
        ingredients = {
            {"steel-plate",60},
            {"electric-engine-unit",10},
            {"processing-unit",15},
            {"solar-panel-3",3}
        },
        enabled = false,
        result = "solar-panel-4",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-4.png",
        icon_size = 64,
        scale = 0.5,
        subgroup = "solar-panels",
        order = "da",
    },
    {------------Technology
        type="technology",
        name = "solar-energy-4",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/technology/solar-energy-4.png", 
        icon_size = 32,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "solar-panel-4"
            }
        },
        prerequisites = {"solar-energy-3"},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 25
        } 
    },
    {------------Entity
        type="solar-panel",
        name="solar-panel-4",
        production = "1620kW",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/solar-panel-4.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "solar-panel-4"},
        max_health = 400,
        fast_replaceable_group = "solar-panel",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },

        picture={
            filename = "__Cosmicon-Solar-Panels__/mod/graphics/entities/solar-panel-4-entity.png",
            priority = "high",
            width = 116,
            height = 112,
            frame_count = 1,
            shift = {0, 0}
        }
    },
    ---------------------------------------Flat-solar-panel-4
    {------------Item
        type="item",
        name = "flat-solar-panel-4",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-4.png",
        icon_size=32,
        subgroup = "solar-panels",
        stack_size = 100,
        place_result="flat-solar-panel-4",
    },
    {------------Recipe
        type="recipe",
        name="flat-solar-panel-4",
        energy_required = 5.0,
        ingredients = {
            {"steel-plate",18},
            {"processing-unit",2},
            {"solar-panel-4",1}
        },
        enabled = false,
        results ={{"flat-solar-panel-4",9}},
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-4.png",
        icon_size = 32,
        subgroup = "solar-panels",
        order = "db",
    },
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-4",
        production = "170kW",
        icon = "__Cosmicon-Solar-Panels__/mod/graphics/icons/flat-solar-panel-4.png",
        icon_size = 32, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-4"},
        max_health = 100,
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        collision_mask = {
            "floor-layer",
            "object-layer",
            "water-tile",
            --"ground-tile"
        },
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        picture={
            filename = "__Cosmicon-Solar-Panels__/mod/graphics/entities/flat-solar-panel-4.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0}
        }
    },


    ---------------------------------------Space-Solar-Array (future)
    --places in space
    --produces about 10'000kW or more
    --costs many resources
    --unlocks after spaceships
    --the factory receives energy by special energy reciever

    --P.S. maybe i'll add dyson sphere
    ---------------------------------------Energy-Reciever (future)
    --recieves energy from space solar arrays during daytime
})