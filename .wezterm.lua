-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.font = wezterm.font 'SF Mono'

-- For example, changing the color scheme:
config.color_scheme = 'Vice Dark (base16)'

config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action {
      SplitPane = {
        direction = 'Right',
        size = {Percent = 50}
      }
    }
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action {
      SplitPane = {
        direction = 'Down',
        size = {Percent = 50}
      }
    }
  },
  {
    key = 'w',
    mods = 'CMD|SHIFT',
    action = wezterm.action {
      CloseCurrentPane = {
        confirm = true
      }
    }
  },
  {
    key = 'h',
    mods = 'OPT',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'j',
    mods = 'OPT',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  { 
    key = 'k', 
    mods = 'OPT', 
    action = wezterm.action.AdjustPaneSize { 'Up', 5 } 
  },
  {
    key = 'l',
    mods = 'OPT',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
}


-- and finally, return the configuration to wezterm
return config