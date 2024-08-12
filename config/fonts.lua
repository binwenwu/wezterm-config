local wezterm = require('wezterm')
local platform = require('utils.platform')

-- font style
local font = 'CaskaydiaMono Nerd Font' 

-- font size
local font_size = platform().is_mac and 18 or 11

-- line height
local line_height = platform().is_mac and 1.20 or 1.15

return {
   font = wezterm.font(font),
   font_size = font_size,
   line_height = line_height,
   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
