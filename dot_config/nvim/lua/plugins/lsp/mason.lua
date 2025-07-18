return {
{
		"williamboman/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			local mason = require("mason")

			local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")
			mason.setup({})
			mason_lspconfig.setup({
				ensure_installed = {
					"gopls",
					"lua_ls",
				},
			})
			mason_tool_installer.setup({
				ensure_installed = {
					"stylua", -- lua formatter
					"gofumpt",
				},
			})
		end,
	},
  {
		"williamboman/mason-lspconfig.nvim",
    dependencies = {
     "williamboman/mason.nvim"
		}
  },
}
