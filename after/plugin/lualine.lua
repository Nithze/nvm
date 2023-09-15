-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#1a1b26',
  white  = '#ffffff',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#24283b',
  insert = '#00FFAB',
  visual = '#FFCA03',
  replace = '#FF008E',
  normal = '#52398e',
  light = '#888da4'
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.white, bg = 'none' },
		b = { fg = colors.white, bg = 'none' },
		c = { fg = colors.white, bg = 'none' },
	},

	insert = { a = { fg = colors.white, bg = 'none' } },
	visual = { a = { fg = colors.white, bg = 'none' } },
	replace = { a = { fg = colors.white, bg = 'none' } },

	inactive = {
		a = { fg = colors.white, bg = 'none' },
		b = { fg = colors.white, bg = 'none' },
		c = { fg = colors.white, bg = 'none' },
	},
}

local sections = {
	lualine_a = {
		{ "mode", separator = { left = "" }, right_padding = 0 },
	},
	lualine_b = {
		{
			"filename",
			shorting_target = 80,
			symbols = {
				modified = " ●", -- Text to show when the buffer is modified
				alternate_file = "#", -- Text to show to identify the alternate file
				directory = "", -- Text to show when the buffer is a directory
			},
		},
		"branch",
	},
	lualine_c = {
		{
			"filename",
			path = 3,
			file_status = false,
		},
	},
	lualine_x = { "filename" },
	lualine_y = { "encoding" },
	lualine_z = {
		{ "location", separator = { right = "" }, left_padding = 2 },
	},
}

require("lualine").setup({
	options = {
		theme = bubbles_theme,
		component_separators = { left = "->", right = "<-" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			"NvimTree",
			"Trouble",
		},
	},
	sections = sections,
	inactive_sections = sections,
	tabline = {},
	extensions = {},
})
