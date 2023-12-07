
local sounds = {}

sounds.generic_impact =
{
  switch_vibration_data =
  {
    filename = "__base__/sound/car-metal-impact.bnvib"
  },
  game_controller_vibration_data =
  {
    low_frequency_vibration_intensity = 0.9,
    duration = 150
  },
  variations =
  {
    {
      filename = "__base__/sound/car-metal-impact-2.ogg", volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-3.ogg", volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-4.ogg", volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-5.ogg", volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-6.ogg", volume = 0.5
    }
  }
}

return sounds
