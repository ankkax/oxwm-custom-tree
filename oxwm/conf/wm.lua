local colors = require("colorthemes.default")
-------------------------------------------------------------------------------
-- Layouts
-------------------------------------------------------------------------------
-- Set custom symbols for layouts (displayed in the status bar)
-- Available layouts: "tiling", "normie" (floating), "grid", "monocle", "tabbed"
oxwm.set_layout_symbol("tiling", "[T]")
oxwm.set_layout_symbol("normie", "[F]")
oxwm.set_layout_symbol("tabbed", "[=]")

-------------------------------------------------------------------------------
-- Appearance
-------------------------------------------------------------------------------
-- Border configuration

-- Width in pixels
oxwm.border.set_width(2)
-- Color of focused window border
oxwm.border.set_focused_color(colors.blue)
-- Color of unfocused window borders
oxwm.border.set_unfocused_color(colors.grey)

-- Smart Enabled = No border if 1 window
oxwm.gaps.set_smart(enabled)
-- Inner gaps (horizontal, vertical) in pixels
oxwm.gaps.set_inner(5, 5)
-- Outer gaps (horizontal, vertical) in pixels
oxwm.gaps.set_outer(5, 5)
