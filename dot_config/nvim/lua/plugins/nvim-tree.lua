return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-tree").setup({
			view = {
				float = {
					enable = true,
					open_win_config = function()
						local width = math.floor(vim.o.columns * 0.6)
						local height = math.floor(vim.o.lines * 0.7)

						return {
							relative = "editor",
							border = "rounded",
							width = width,
							height = height,
							row = (vim.o.lines - height) * 0.5,
							col = (vim.o.columns - width) * 0.5,
						}
					end,
				},

				-- эта опция обязательна, даже если float используется
				width = function()
					return math.floor(vim.o.columns * 0.6)
				end,
			},

			actions = {
				open_file = {
					quit_on_open = true, -- закрывать дерево при выборе файла
				},
			},
		})

		-- Горячая клавиша для открытия/закрытия дерева
		vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
	end,
}
