---@module 'oxwm'
local colors = require("colorthemes.default")

-- Workspace tags - can be numbers, names, or icons (requires a Nerd Font)
local tags = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }
-- local tags = { "", "󰊯", "", "", "󰙯", "󱇤", "", "󱘶", "󰧮" } -- Example of nerd font icon tags

-- Font for the status bar (use "fc-list" to see available fonts)
local bar_font = "monospace:style=Bold:size=10"

-- Define your blocks
-- Similar to widgets in qtile, or dwmblocks
local blocks = {
	oxwm.bar.block.ram({
		format = "Ram: {used}/{total} GB",
		interval = 5,
		color = colors.light_blue,
		underline = true,
	}),
	oxwm.bar.block.static({
		text = " │  ",
		interval = 999999999,
		color = colors.lavender,
		underline = false,
	}),
	oxwm.bar.block.shell({
		format = "{}",
		command = "uname -r",
		interval = 999999999,
		color = colors.red,
		underline = true,
	}),
	oxwm.bar.block.static({
		text = " │  ",
		interval = 999999999,
		color = colors.lavender,
		underline = false,
	}),
	oxwm.bar.block.datetime({
		format = "{}",
		date_format = "%a, %b %d - %-I:%M %P",
		interval = 1,
		color = colors.cyan,
		underline = true,
	}),
	-- Uncomment to add battery status (useful for laptops)
	-- oxwm.bar.block.battery({
	--     format = "Bat: {}%",
	--     charging = "⚡ Bat: {}%",
	--     discharging = "- Bat: {}%",
	--     full = "✓ Bat: {}%",
	--     interval = 30,
	--     color = colors.green,
	--     underline = true,
	-- }),
}
oxwm.set_tags(tags)

-------------------------------------------------------------------------------
-- Status Bar Configuration
-------------------------------------------------------------------------------
-- Font configuration
oxwm.bar.set_font(bar_font)

-- Set your blocks here (defined above)
oxwm.bar.set_blocks(blocks)

-- Bar color schemes (for workspace tag display)
-- Parameters: foreground, background, border

-- Unoccupied tags
oxwm.bar.set_scheme_normal(colors.fg, colors.bg, "#444444")
-- Occupied tags
oxwm.bar.set_scheme_occupied(colors.cyan, colors.bg, colors.cyan)
-- Currently selected tag
oxwm.bar.set_scheme_selected(colors.cyan, colors.bg, colors.purple)
-- Urgent tags (windows requesting attention)
oxwm.bar.set_scheme_urgent(colors.red, colors.bg, colors.red)

-- Hide tags that have no windows and are not selected
-- oxwm.bar.set_hide_vacant_tags(true)
