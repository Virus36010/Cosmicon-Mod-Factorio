
data.raw["technology"]["solar-energy"].effects={
  {
    type = "unlock-recipe",
    recipe = "solar-panel"
  },
  {
    type = "unlock-recipe",
    recipe = "flat-solar-panel-1"
  },
}

data:extend({
  {----------------------Panels' group
    type = "item-subgroup",
    name = "solar-panels",
    group = "production",
    order = "bb",
  },
})

data.raw["recipe"]["solar-panel"].subgroup="solar-panels"
data.raw["recipe"]["solar-panel"].order="aa"

data.raw["item"]["solar-panel"].subgroup="solar-panels"
data.raw["item"]["solar-panel"].order="aa"

data.raw["solar-panel"]["solar-panel"].subgroup="solar-panels"
data.raw["solar-panel"]["solar-panel"].order="aa"
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
data.raw["solar-panel"]["solar-panel"].next_upgrade="solar-panel-2"


data.raw["recipe"]["accumulator"].subgroup="solar-panels"
data.raw["recipe"]["accumulator"].order="ea"

data.raw["item"]["accumulator"].subgroup="solar-panels"
data.raw["item"]["accumulator"].order="ea"

data.raw["accumulator"]["accumulator"].subgroup="solar-panels"
data.raw["accumulator"]["accumulator"].order="ea"
data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"
data.raw["accumulator"]["accumulator"].next_upgrade="accumulator-2"
