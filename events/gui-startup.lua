local wezterm = require("wezterm")
local mux = wezterm.mux

local M = {}

M.setup = function()
	wezterm.on("gui-startup", function(cmd)
		local tab, pane, window = mux.spawn_window(cmd or {})
		-- Create a split occupying the right 1/3 of the screen
		pane:split({ size = 0.3 })
		-- Create another split in the right of the remaining 2/3
		-- of the space; the resultant split is in the middle
		-- 1/3 of the display and has the focus.
		pane:split({ size = 0.5 })
	end)
end

return M
