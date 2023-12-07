data:extend ({

 -- ПЕЧЬ 1 \/\/

    {
        type = "technology",
        name = "Fast-furnace",
        icon = "__Cosmicon__/graphics/speed-furnace-1.png", 
        icon_size = 32,
        effects = {
            {
            type = "unlock-recipe",
            recipe = "speed-furnace-1"
            }
        },
        
        prerequisites = {"advanced-material-processing-2"},
        
        unit = {
            count = 1,
            ingredients = {
            {"automation-science-pack", 1}
            
            --{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"military-science-pack", 1},{"utility-science-pack", 1},{"space-science-pack", 1}
            },
            time = 1
        } 
    },

 -- ПЕЧЬ 2 \/\/

	{
        type = "technology",
        name = "Fast-furnace-2",
        icon = "__Cosmicon__/graphics/speed-furnace-1.png", 
        icon_size = 32,
        effects = {
            {
            type = "unlock-recipe",
            recipe = "speed-furnace-2"
            }
        },
        
        prerequisites = {"speed-module-3","productivity-module-3","Fast-furnace","automation-3"},
        
        unit = {
            count = 400,
            ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"utility-science-pack", 1}
            
            --{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"military-science-pack", 1},{"utility-science-pack", 1},{"space-science-pack", 1}
            },
            time = 40
        } 
    },
	
 --Drill \/\/

  {
        type = "technology",
        name = "Fast-drilling",
        icon = "__Cosmicon__/graphics/speed-drill1-entity.png", 
        icon_size = 128,
        effects = {
            {
            type = "unlock-recipe",
            recipe = "speed-drill-1"
            }
        },
        
        prerequisites = {"advanced-electronics-2"},
        
        unit = {
            count = 50,
            ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            
            --{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"military-science-pack", 1},{"utility-science-pack", 1},{"space-science-pack", 1}
            },
            time = 15
        } 
    },
})