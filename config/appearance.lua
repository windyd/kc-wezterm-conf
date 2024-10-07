local wezterm = require("wezterm")
local gpu_adapters = require("utils.gpu_adapter")

return {
	animation_fps = 60,
	max_fps = 60,
	front_end = "WebGpu",
	webgpu_power_preference = "HighPerformance",
	webgpu_preferred_adapter = gpu_adapters:pick_best(),

	-- tab bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = false,
	tab_max_width = 25,
	show_tab_index_in_tab_bar = false,
	switch_to_last_active_tab_when_closing_tab = true,
	-- my coolnight colorscheme:
	colors = {
		foreground = "#CBE0F0",
		background = "#011423",
		cursor_bg = "#47FF9C",
		cursor_border = "#47FF9C",
		cursor_fg = "#011423",
		selection_bg = "#033259",
		selection_fg = "#CBE0F0",
		ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
		brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
		tab_bar = { background = "transparent" },
	},

	-- font = wezterm.font("MesloLGS Nerd Font Mono"),
	font = wezterm.font("JetBrainsMono Nerd Font"),
	freetype_load_target = "Normal",
	freetype_render_target = "Normal",
	font_size = 16,
	window_decorations = "RESIZE",
	window_background_opacity = 0.8,
	macos_window_background_blur = 10,
	initial_rows = 38,
	initial_cols = 155,

	-- NOTE: for fancy_tab_bar
	-- window_frame = {
	-- 	-- make the window titlebar transparent (when fancy_tab_bar is enabled)
	-- 	active_titlebar_bg = "rgba(0 0 0 0)",
	-- },
}
