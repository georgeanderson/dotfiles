-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Spawn a fish shell in login mode
config.default_prog = { '/usr/bin/zsh', '-l' }

-- If set to true, when there is only a single tab, the tab bar is hidden from the display
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = 'Tokyo Night'
config.font_size = 11.0
config.window_background_image = './Pictures/wallhaven.png'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.01,
}
-- and finally, return the configuration to wezterm
return config

