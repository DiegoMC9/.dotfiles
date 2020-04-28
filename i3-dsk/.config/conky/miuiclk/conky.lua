conky.config = {
--#####################
-- - Conky settings - #
--#####################
	update_interval = 1,
	override_utf8_locale=true,
	imlib_cache_size = 0,
	double_buffer = true,
	no_buffers = true,

--####################
-- - Text settings - #
--####################
	use_xft = true,
	xftalpha=1,
	font="Source Code Pro, Light Italic:size=10",
	override_utf8_locale = true,
	text_buffer_size = 128,

--############################
-- - Window specifications - #
--############################
	own_window = true,
	own_window_type = 'override',
	own_window_transparent = true,
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',

	alignment = 'tm',
	gap_x = -25,
	gap_y = 0,
	minimum_width = 600,
	minimum_height = 400,
	default_bar_width = 60, default_bar_height = 0,

--########################
-- - Graphics settings - #
--########################
	draw_shades = false,
	draw_shades=false,
	draw_outline=false,
	draw_borders=false,

	default_color = '#080808',
	default_shade_color = '#000000',
	color0 = '#ffffff',
	color1 = '#ffffff',

--lua_load ~/.conky/conkybg.lua
--lua_draw_hook_pre conky_draw_bg

	own_window_argb_visual = true,
	--own_window_colour = '#000000',
	own_window_argb_value = 0,
};

conky.text = [[
	${font Comfortaa, Light:size=80}${color0}\
	${voffset 30}\
	${alignc}${time %I:%M}\
	${font}${color}
	\
	${font Comfortaa, Light:size=40}${color0}\
	${voffset 10}\
	${alignc}${time %A, %B %d}\
	${font}${color}
]];
