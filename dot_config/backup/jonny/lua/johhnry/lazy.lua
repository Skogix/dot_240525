local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Color theme
	{ "catppuccin/nvim", name = "catpuccin" },

	-- Botom status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- Completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	-- Snippets
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	"saadparwaiz1/cmp_luasnip",

	-- LSP
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
	},
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	-- LSP diagnostics and code actions
	"jose-elias-alvarez/null-ls.nvim",

	-- Pretty error reporting and icons
	"RRethy/vim-illuminate",
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- Telescope fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ "nvim-treesitter/playground" },

	-- File explorer
	"nvim-tree/nvim-tree.lua",

	-- Shortcut explorer
	"folke/which-key.nvim",

	-- Project management
	"ahmedkhalf/project.nvim",

	-- Integrated terminal
	"akinsho/toggleterm.nvim",

	-- Autopairs
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	-- Comments
	"numToStr/Comment.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",

	-- Git
	"lewis6991/gitsigns.nvim",

	-- Tabs
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	"moll/vim-bbye",

	-- Markdown preview
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		lazy = true,
		build = "cd app && npm install && git reset --hard",
	},
})
