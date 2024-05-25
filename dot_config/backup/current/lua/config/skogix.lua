return {
	-- { "folke/trouble.nvim", enabled = false },
	-- { "glepnir/dashboard-nvim", enabled = false },
	-- { "echasnovski/mini.pairs", enabled = false },
	-- { "echasnovski/mini.surround", enabled = false },
	-- { "JoosepAlviste/nvim-ts-context-commentstring", enabled = false },
	-- { "echasnovski/mini.comment", enabled = false },
	-- { "echasnovski/mini.ai", enabled = false },
	-- { "nvim-pack/nvim-spectre", enabled = false },
	-- { "folke/flash.nvim", enabled = false },
	-- { "rcarriga/nvim-notify", enabled = false },
	-- { "stevearc/dressing.nvim", enabled = false },
	-- { "akinsho/bufferline.nvim", enabled = false },
	-- { "nvim-lualine/lualine.nvim", enabled = false },
	-- { "folke/noice.nvim", enabled = false },
	-- { "glepnir/dashboard-nvim", enabled = false },
	-- { "folke/todo-comments.nvim", enabled = false },
	-- { "jose-elias-alvarez/null-ls.nvim" },
	{ "vimwiki/vimwiki" },
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			-- Your DBUI configuration
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},
}
