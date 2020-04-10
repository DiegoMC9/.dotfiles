conky.config = {
--#####################
-- - Conky settings - #
--#####################
	update_interval = 1,
	total_run_times = 0,
--	net_avg_samples = 1,
--	cpu_avg_samples = 1,

	imlib_cache_size = 0,
	double_buffer = true,
	no_buffers = true,

--####################
-- - Text settings - #
--####################
	use_xft = true,
	font = 'AvantGarde LT Medium:size=40',
	override_utf8_locale = true,
	text_buffer_size = 2048,

--############################
-- - Window specifications - #
--############################
	own_window = true,
	own_window_type = 'override',
	own_window_transparent = true,
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
--own_window_argb_visual yes
--own_window_argb_value 100

	alignment = 'tm',
	gap_x = 0,
	gap_y = 30,
	minimum_width = 350, minimum_height = 20,

	default_bar_width = 60, default_bar_height = 0,

--########################
-- - Graphics settings - #
--########################
	draw_shades = false,

	default_color = '#080808',
	default_shade_color = '#1d1d1d',
	color0 = '#ffffff',
	color1 = '#ffffff',
	color2 = '#ffffff',


--lua_load ~/.conky/conkybg.lua
--lua_draw_hook_pre conky_draw_bg

	own_window_argb_visual = false,
	own_window_colour = '#000000',
	own_window_argb_value = 0,
};

conky.text = [[
${voffset 11} ${goto 30}${time %I} ${goto 110}${time %M}
${image ./b.png -p 0,0 -s 188x100}
${voffset -175} ${goto 226}${font AvantGarde LT Medium:size=10}${time %a} ${font}
${font AvantGarde LT Medium:size=38}${voffset -65}${goto 215}${time %d}
${image ./c.png -p 185,0 -s 100x100}

]];
