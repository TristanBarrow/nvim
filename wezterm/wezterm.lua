local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Gruvbox dark, medium (base16)'
config.window_background_image = '/Users/tristanbarrow/.config/wallpapers/digtial-fox.png'

config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.1,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0,
}

return config
