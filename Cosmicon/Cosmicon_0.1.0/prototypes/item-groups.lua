
data:extend({
---------------------------------------------------------MIGRATION GROUPS



---------------------------------------------------------COSMICON GROUP
  {
    type="item-group",
    name="cosmicon",
    icon="__Cosmicon__/graphics/icons/Cosmicon.png",
    icon_size=128,
    icon_mipmaps = 2,
    scale=0.5,
    order="k"
  },
  
  {
    type="item-subgroup",
    name="cosmicon-special-objects",
    group="cosmicon",
    order="q"
  },

  {
    type="item-subgroup",
    name="cosmicon-other",
    group="cosmicon",
    order="z"
  },
  
})