return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>gf",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = { "n", "v" },
			desc = "Format file or selection",
		},
	},
	config = function()
		conf = require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofumpt" },
				sql = { "pgformatter", "sqlfmt", "sleek", "sql-formatter", "pgformatter" },
			},
			format_on_save = {
				lsp_fallback = true, -- Use LSP formatting if conform doesn't have a formatter
				async = false, -- Format synchronously
				timeout_ms = 500, -- Timeout for formatting in milliseconds
			},
		})
	end,
}
