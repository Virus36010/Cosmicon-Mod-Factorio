
require ("util")
local hit_effects = require ("hit-effects")
local sounds = require("sounds")
local icon = "__Cosmicon-Solar-Panels__/graphics/icons"
local ent = "__Cosmicon-Solar-Panels__/graphics/entities"
local tec = "__Cosmicon-Solar-Panels__/graphics/technology"

data:extend({
    ---------------------------------------Flat-solar-panel-1
    {------------Item
        type="item",
        name = "flat-solar-panel-1",
        icon = icon.."/flat-solar-panel-1.png",
        icon_size=64, scale = 0.5,
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
        icon = icon.."/flat-solar-panel-1.png",
        icon_size = 64, scale = 0.5,
        subgroup = "solar-panels",
        order = "ab",
    },
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-1",
        production = "6kW",
        icon = icon.."/flat-solar-panel-1.png",
        icon_size = 64, icon_mipmaps = 4, scale = 0.5,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-1"},
        max_health = 100,
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fast_replaceable_group = "solar-panel",
        next_upgrade="flat-solar-panel-2",
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
            filename = ent.."/flat-solar-panel-1.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0},
            hr_version={
                filename = ent.."/hr-flat-solar-panel-1.png",
                priority = "high",
                width = 64,
                height = 64,
                shift = {0, 0},
                frame_count = 1,
                scale = 0.5
            }
        },
    },


    ---------------------------------------Solar-panel-2
    {------------Item
        type="item",
        name = "solar-panel-2",
        icon = icon.."/solar-panel-2.png",
        icon_size=64, scale = 0.5,
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
        icon = icon.."/solar-panel-2.png",
        icon_size = 64, scale = 0.5,
        subgroup = "solar-panels",
        order = "ba",
    },
    {------------Technology
        type="technology",
        name = "solar-energy-2",
        icon = tec.."/solar-energy-2.png", 
        icon_size = 256, icon_mipmaps = 1,
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
        icon = icon.."/solar-panel-2.png",
        icon_size = 64, icon_mipmaps = 4, scale = 0.5,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "solar-panel-2"},
        max_health = 400,
        fast_replaceable_group = "solar-panel",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        vehicle_impact_sound = sounds.generic_impact,
        damaged_trigger_effect = hit_effects.entity(),
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        next_upgrade="solar-panel-3",
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        picture={
            layers={
                {
                    filename = ent.."/solar-panel-2.png",
                    priority = "high",
                    width = 116,
                    height = 112,
                    frame_count = 1,
                    shift = util.by_pixel(-3, 3),
                    hr_version={
                        filename = ent.."/hr-solar-panel-2.png",
                        priority = "high",
                        width = 230,
                        height = 224,
                        shift = util.by_pixel(-3, 3.5),
                        frame_count=1,
                        scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
                    priority = "high",
                    width = 112,
                    height = 90,
                    shift = util.by_pixel(10, 6),
                    draw_as_shadow = true,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
                        priority = "high",
                        width = 220,
                        height = 180,
                        shift = util.by_pixel(9.5, 6),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            }
        },
        overlay={
            layers={
                {
                filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
                priority = "high",
                width = 108,
                height = 90,
                shift = util.by_pixel(11, 6),
                hr_version={
                    filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow-overlay.png",
                    priority = "high",
                    width = 214,
                    height = 180,
                    shift = util.by_pixel(10.5, 6),
                    scale = 0.5
                }
                }
            }
        }
    },
    ---------------------------------------Flat-solar-panel-2
    {------------Item
        type="item",
        name = "flat-solar-panel-2",
        icon = icon.."/flat-solar-panel-2.png",
        icon_size=64, scale=0.5,
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
        icon = icon.."/flat-solar-panel-2.png",
        icon_size = 64, scale = 0.5,
        subgroup = "solar-panels",
        order = "bb",
    },
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-2",
        production = "19kW",
        icon = icon.."/flat-solar-panel-2.png",
        icon_size = 64, icon_mipmaps = 4, scale=0.5,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-2"},
        max_health = 100,
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fast_replaceable_group = "solar-panel",
        next_upgrade="flat-solar-panel-3",
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
            filename = ent.."/flat-solar-panel-2.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0},
            hr_version={
                filename = ent.."/hr-flat-solar-panel-2.png",
                priority = "high",
                width = 64,
                height = 64,
                shift = {0, 0},
                frame_count = 1,
                scale = 0.5
            }
        }
    },


    ---------------------------------------Solar-panel-3
    {------------Item
        type="item",
        name = "solar-panel-3",
        icon = icon.."/solar-panel-3.png",
        icon_size=64, scale = 0.5,
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
        icon = icon.."/solar-panel-3.png",
        icon_size = 64, scale = 0.5,
        subgroup = "solar-panels",
        order = "ca",
    },
    {------------Technology
        type="technology",
        name = "solar-energy-3",
        icon = tec.."/solar-energy-3.png", 
        icon_size = 256, icon_mipmaps = 1,
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
        icon = icon.."/solar-panel-3.png",
        icon_size = 64, icon_mipmaps = 4, scale = 0.5,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "solar-panel-3"},
        max_health = 400,
        fast_replaceable_group = "solar-panel",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        vehicle_impact_sound = sounds.generic_impact,
        damaged_trigger_effect = hit_effects.entity(),
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        next_upgrade="solar-panel-4",
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        picture={
            layers={
                {
                    filename = ent.."/solar-panel-3.png",
                    priority = "high",
                    width = 116,
                    height = 112,
                    frame_count = 1,
                    shift = util.by_pixel(-3, 3),
                    hr_version={
                        filename = ent.."/hr-solar-panel-3.png",
                        priority = "high",
                        width = 230,
                        height = 224,
                        frame_count=1,
                        shift = util.by_pixel(-3, 3.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
                    priority = "high",
                    width = 112,
                    height = 90,
                    shift = util.by_pixel(10, 6),
                    draw_as_shadow = true,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
                        priority = "high",
                        width = 220,
                        height = 180,
                        shift = util.by_pixel(9.5, 6),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            }
        },
        overlay={
            layers={
                {
                filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
                priority = "high",
                width = 108,
                height = 90,
                shift = util.by_pixel(11, 6),
                hr_version={
                    filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow-overlay.png",
                    priority = "high",
                    width = 214,
                    height = 180,
                    shift = util.by_pixel(10.5, 6),
                    scale = 0.5
                }
                }
            }
        }
    },
    ---------------------------------------Flat-solar-panel-3
    {------------Item
        type="item",
        name = "flat-solar-panel-3",
        icon = icon.."/flat-solar-panel-3.png",
        icon_size=64, scale = 0.5,
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
        icon = icon.."/flat-solar-panel-3.png",
        icon_size = 64, scale = 0.5,
        subgroup = "solar-panels",
        order = "cb",
    },
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-3",
        production = "58kW",
        icon = icon.."/flat-solar-panel-3.png",
        icon_size = 64, icon_mipmaps = 4, scale = 0.5,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-3"},
        max_health = 100,
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fast_replaceable_group = "solar-panel",
        next_upgrade="flat-solar-panel-4",
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
            filename = ent.."/flat-solar-panel-3.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0},
            hr_version={
                filename = ent.."/hr-flat-solar-panel-3.png",
                priority = "high",
                width = 64,
                height = 64,
                shift = {0, 0},
                frame_count = 1,
                scale = 0.5,
            }
        }
    },


    ---------------------------------------Solar-panel-4
    {------------Item
        type="item",
        name = "solar-panel-4",
        icon = icon.."/solar-panel-4.png",
        icon_size=64, scale = 0.5,
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
        icon = icon.."/solar-panel-4.png",
        icon_size = 64, scale = 0.5,
        subgroup = "solar-panels",
        order = "da",
    },
    {------------Technology
        type="technology",
        name = "solar-energy-4",
        icon = tec.."/solar-energy-4.png", 
        icon_size = 256, icon_mipmaps = 1,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "solar-panel-4"
            },
            {
                type = "unlock-recipe",
                recipe = "flat-solar-panel-4"
            },
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
        icon = icon.."/solar-panel-4.png",
        icon_size = 64, icon_mipmaps = 4, scale = 0.5,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "solar-panel-4"},
        max_health = 400,
        fast_replaceable_group = "solar-panel",
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        vehicle_impact_sound = sounds.generic_impact,
        damaged_trigger_effect = hit_effects.entity(),
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        energy_source ={
            type = "electric",
            usage_priority = "solar"
        },
        picture={
            layers={
                {
                    filename = ent.."/solar-panel-4.png",
                    priority = "high",
                    width = 116,
                    height = 112,
                    frame_count = 1,
                    shift = util.by_pixel(-3, 3),
                    hr_version={
                        filename = ent.."/hr-solar-panel-4.png",
                        priority = "high",
                        width = 230,
                        height = 224,
                        frame_count=1,
                        shift = util.by_pixel(-3, 3.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
                    priority = "high",
                    width = 112,
                    height = 90,
                    shift = util.by_pixel(10, 6),
                    draw_as_shadow = true,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
                        priority = "high",
                        width = 220,
                        height = 180,
                        shift = util.by_pixel(9.5, 6),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            }
        },
        overlay={
            layers={
                {
                filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
                priority = "high",
                width = 108,
                height = 90,
                shift = util.by_pixel(11, 6),
                hr_version={
                    filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow-overlay.png",
                    priority = "high",
                    width = 214,
                    height = 180,
                    shift = util.by_pixel(10.5, 6),
                    scale = 0.5
                }
                }
            }
        }
    },
    ---------------------------------------Flat-solar-panel-4
    {------------Item
        type="item",
        name = "flat-solar-panel-4",
        icon = icon.."/flat-solar-panel-4.png",
        icon_size=64, scale=0.5,
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
        icon = icon.."/flat-solar-panel-4.png",
        icon_size = 64, scale = 0.5,
        subgroup = "solar-panels",
        order = "db",
    },
    {------------Entity
        type="solar-panel",
        name="flat-solar-panel-4",
        production = "170kW",
        icon = icon.."/flat-solar-panel-4.png",
        icon_size = 64, icon_mipmaps = 4, scale = 0.5,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "flat-solar-panel-4"},
        fast_replaceable_group = "solar-panel",
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
            filename = ent.."/flat-solar-panel-4.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0, 0},
            hr_version={
                filename = ent.."/hr-flat-solar-panel-4.png",
                priority = "high",
                width = 64,
                height = 64,
                shift = {0, 0},
                frame_count = 1,
                scale = 0.5
            }
        }
    },


    ---------------------------------------Space-Solar-Array (future)
    --places in space
    --produces about 10'000kW or more
    --costs many resources
    --unlocks after spaceships
    --factory receives energy by special energy reciever

    --P.S. maybe i'll add dyson sphere
    ---------------------------------------Energy-Reciever (future)
    --recieves energy from space solar arrays during daytime
})
