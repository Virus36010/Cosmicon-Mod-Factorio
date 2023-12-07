data:extend ({

-- ПЕЧЬ 1 \/\/

    {
        type = "recipe",
        name = "speed-furnace-1",
        energy_required = 1.0,
        ingredients = {
            {"iron-plate",5}
        },
        enabled = false,
        result = "speed-furnace-1",
        icon = "__Cosmicon__/graphics/speed-furnace-1.png",
        icon_size = 32,
        scale = 0.5,
        shift = {4, -8},
        subgroup = "CosmiconItems-furnaces",
        order = "aaa",
    },
	
	
  -- ПЕЧЬ 2 \/\/
{
        type = "recipe",
        name = "speed-furnace-2",
        energy_required = 15.0,
        ingredients = {
            {"steel-plate",60},
            {"electric-engine-unit",30},
            {"processing-unit",15},
            {"assembling-machine-3",2},
            {"speed-module-3",5},
            {"productivity-module-3",5}
        },
        enabled = false,
        result = "speed-furnace-2",
        icon = "__Cosmicon__/graphics/speed-furnace-1.png",
        icon_size = 32,
        scale = 0.5,
        subgroup = "CosmiconItems-furnaces",
        order = "aaaa",
    },
    

 -- Drill \/ \/
  
  
   {
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
        icon = "__Cosmicon__/graphics/speed-drill1.png",
        icon_size = 32,
        scale = 0.5,
        subgroup = "extraction-machine",
        order = "сb",
    },
    
	
	
})