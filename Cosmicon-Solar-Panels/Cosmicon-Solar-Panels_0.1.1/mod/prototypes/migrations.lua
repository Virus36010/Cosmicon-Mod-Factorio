data.raw["technology"]["solar-energy"].effects={
  {
    type = "unlock-recipe",
    recipe = "flat-solar-panel-1"
  },
  {
    type = "unlock-recipe",
    recipe = "solar-panel"
  },
}

data:extend({
  {---------------------------------------Group-panels
    type = "item-subgroup",
    name = "solar-panels",
    group = "production",
    order = "bb",
  },
})

data.raw["recipe"]["solar-panel"].subgroup="solar-panels"
data.raw["recipe"]["solar-panel"].order="aa"