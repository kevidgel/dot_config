local wezterm = require("wezterm")
local config = {}

config.font_size = 12;
config.tab_bar_at_bottom = true;
config.use_fancy_tab_bar = false;
config.tab_max_width = 100;
config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '%',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}
-- font stuff
config.font_rules =
{
    {
        italic = false,
        intensity = 'Normal',
        font = wezterm.font
        {
            family = 'JetBrainsMono Nerd Font',
            weight = 'DemiBold',
        }
    },
    {
        italic = false,
        intensity = 'Bold',
        font = wezterm.font
        {
            family = 'JetBrainsMono Nerd Font',
            weight = 'ExtraBold',
        }
    },
    {
        italic = true,
        intensity = 'Normal',
        font = wezterm.font
        {
            family = 'JetBrainsMono Nerd Font',
            weight = 'DemiBold',
            style = 'Italic',
        }
    },
    {
        italic = true,
        intensity = 'Bold',
        font = wezterm.font
        {
            family = 'JetBrainsMono Nerd Font',
            weight = 'ExtraBold',
            style = 'Italic',
        }
    }
}

config.color_scheme = 'Catppuccin Mocha'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
