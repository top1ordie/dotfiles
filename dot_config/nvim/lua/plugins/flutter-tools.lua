return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = function()
		local flutter = require("flutter-tools")
		flutter.setup({
			lsp = {
				color = { -- show the derived colours for dart variables
					enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
					background = true, -- highlight the background
					background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
					foreground = false, -- highlight the foreground
					virtual_text = true, -- show the highlight using virtual text
					virtual_text_str = "■", -- the virtual text character to highlight
				},
			},
		})
	end,
}
