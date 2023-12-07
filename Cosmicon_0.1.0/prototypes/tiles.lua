
local tile = "__Cosmicon__/graphics/entities/tiles"

data:extend({
  {-------------Pocket-Dimension-Tile
    type = "tile",
    name = "pocket-dimension-tile",
    order = "pdt",
    needs_correction = false,
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.0,
    layer = 64,
    transition_overlay_layer_offset = 2,
    decorative_removal_probability = 0.25,
    flags = {"placeable-neutral"},
    variants={
      main={
        {
          picture = tile.."/hr-pocket-dimension-tile.png",
          count = 1,
          size = 1,
        },
      },
      side={
        picture = tile.."/pocket-dimension-tile-border.png",
        count = 2,
      },
      inner_corner={
        picture = tile.."/pocket-dimension-tile-border.png",
        count = 3,
      },
      outer_corner={
        picture = tile.."/pocket-dimension-tile-border.png",
        count = 4,
      },
      --  How to work with material background? It doesn't work :(
      --[[material_background={
        picture = tile.."/pocket-dimension-tile.png",
        count = 8,
        hr_version =
        {
          picture = tile.."/hr-pocket-dimension-tile.png",
          count = 8,
          scale = 0.5
        }
      } ]]
    },
    map_color={r=63, g=61, b=59},
    pollution_absorption_per_second = 0,
  },

})