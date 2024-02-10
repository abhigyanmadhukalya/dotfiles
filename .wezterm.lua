local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Fonts
config.font = wezterm.font_with_fallback({
	"JetBrains Mono Nerd Font",
	"FiraCode",
})
config.font_size = 13.7

-- Color scheme
config.color_scheme = "Catppuccin Mocha"

-- Window
config.initial_cols = 150
config.initial_rows = 35
config.adjust_window_size_when_changing_font_size = false
config.enable_tab_bar = false
config.enable_wayland = true

config.hide_mouse_cursor_when_typing = true
config.use_dead_keys = false

return config
