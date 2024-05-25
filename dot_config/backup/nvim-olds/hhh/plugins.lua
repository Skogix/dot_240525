local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  -- {
  --   "nvim-neorg/neorg",
  --   build = ":Neorg sync-parsers",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   lazy = false,
  --   config = function()
  --     require("neorg").setup {
  --       load = {
  --         ["core.defaults"] = {}, -- Loads default behaviour
  --         ["core.concealer"] = {}, -- Adds pretty icons to your documents
  --         ["core.summary"] = {
  --           config = {
  --             strategy = "default"
  --           }
  --         },
  --         ["core.presenter"] = {
  --           config = {
  --             zen_mode = "zen-mode"
  --           }
  --         },
  --         ["core.completion"] = {
  --           config = {
  --             engine = "nvim-cmp"
  --           }
  --         }, -- Adds pretty icons to your documents
  --         ["core.dirman"] = { -- Manages Neorg workspaces
  --           config = {
  --             workspaces = {
  --               notes = "~/notes",
  --             },
  --             default_workspace = "notes",
  --             open_last_workspace = "true"
  --           },
  --         },
  --         ["core.integrations.telescope"] = {},
  --       },
  --     }
  --   end,
  -- },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "sourcegraph/sg.nvim",
    dependencies = { "nvim-lua/plenary.nvim", { "nvim-neorg/neorg-telescope" } },
    lazy = false,
  },
  {
    "folke/zen-mode.nvim",
    lazy = false,
  },
  {
    "vimwiki/vimwiki",
    config = function()
      vim.g.vimwiki_list = {
        {
          path = "/home/xx/Documents/singularityOffice/wiki",
          syntax = "markdown",
          ext = ".md",
        },
      }
    end,
    lazy = false,
  },
  {
    "jreybert/vimagit",
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "tpope/vim-dadbod",
    lazy = false,
  },
  -- {
  --   "kristijanhusak/vim-dadbod-ui",
  --   dependencies = {
  --     { "tpope/vim-dadbod", lazy = true },
  --     { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  --   },
  --   cmd = {
  --     "DBUI",
  --     "DBUIToggle",
  --     "DBUIAddConnection",
  --     "DBUIFindBuffer",
  --   },
  -- },
}
-- https://github.com/mg979/vim-visual-multi       multiselect cursors
-- 'ThePrimeagen/harpoon'
return plugins

-- 	"nvim-telescope/telescope-file-browser.nvim",
-- 	-- "romgrk/barbar.nvim",
-- 		"folke/noice.nvim",
--
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system({
--     "git",
--     "clone",
--     "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git",
--     "--branch=stable", -- latest stable release
--     lazypath,
--   })
-- end
--
-- vim.opt.rtp:prepend(lazypath)
--
-- local plugins = {
--   {'nvim-tree/nvim-tree.lua', lazy = true},
--   {'nvim-tree/nvim-web-devicons', lazy = true},
--   {'nvim-lualine/lualine.nvim', lazy = true},
--   {'marko-cerovac/material.nvim', lazy = true},
--   {'nvim-treesitter/nvim-treesitter', lazy = true},
--   {
--     'nvim-telescope/telescope.nvim',
--     version = '0.1.0',
--     dependencies = {
--       'nvim-lua/plenary.nvim'
--     }, lazy = true
--   },
--   {
--     'williamboman/mason.nvim',
--     'williamboman/mason-lspconfig.nvim',
--     'neovim/nvim-lspconfig',
--     lazy = true
--   },
--   {'hrsh7th/nvim-cmp'},
--   {'hrsh7th/cmp-nvim-lsp'},
--   {'L3MON4D3/LuaSnip'},
--   {'saadparwaiz1/cmp_luasnip'},
--   {'rafamadriz/friendly-snippets'},
--   { "akinsho/toggleterm.nvim",
--     commit = "2a787c426ef00cb3488c11b14f5dcf892bbd0bda",
--     config = "require('toggleterm')",
--     lazy = true
--   },
--   -- This method works for lazy, but it doubles startup time
--   -- {
--   --     "iamcco/markdown-preview.nvim",
--   --     config = function ()
--   --       vim.fn["mkdp#util#install"]()
--   --     end
--   -- },
--   {
--     'iamcco/markdown-preview.nvim',
--     build = 'cd app && npm install',
--     -- using npm to install rather than the vim function leads to significantly faster startup time
--     init = function()
--       vim.g.mkdp_filetypes = { 'markdown' }
--     end,
--     config = function()
--       vim.keymap.set("n", "<leader>m", "<Plug>MarkdownPreviewToggle", { desc = "Markdown Preview" })
--     end
--   },
--   -- Peek works (assuming deno and JavaScript dependencies are installed), but there is a bug currently where the preview doesn't load
--   -- {
--   --   'toppair/peek.nvim',
--   --   run = 'deno task --quiet build:fast',
--   --   config = function()
--   --     vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
--   --     vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
--   --   end,
--   -- },
--   {'numToStr/Comment.nvim', lazy = true},
--   {'JoosepAlviste/nvim-ts-context-commentstring', lazy = true},
--   {'windwp/nvim-autopairs', lazy = true},
--   {'windwp/nvim-ts-autotag', lazy = true},
--   {
--       'goolord/alpha-nvim',
--       config = function ()
--           require'alpha'.setup(require'alpha.themes.dashboard'.config)
--       end, lazy = true
--   },
--   {'luk400/vim-lichess'},
--   {'dstein64/vim-startuptime'},
--   {'rhysd/clever-f.vim'},
--   {
--     'ggandor/leap.nvim',
--     config = function()
--       require('leap').add_default_mappings()
--     end,
--     lazy = true
--   },
--   {'ThePrimeagen/vim-be-good', lazy = true},
--   {'alec-gibson/nvim-tetris'},
--   {'tamton-aquib/zone.nvim', lazy = true, enabled = false},
--   {
--     'folke/noice.nvim',
--     dependencies = {
--       'MunifTanjim/nui.nvim',
--       'rcarriga/nvim-notify',
--     },
--     lazy = true
--   },
--   {'xiyaowong/transparent.nvim'},
--   {'ThePrimeagen/harpoon', lazy = true},
--   {'alanfortlink/blackjack.nvim', lazy = true},
--   {'0x100101/lab.nvim', build = 'cd js && npm ci', dependencies = { 'nvim-lua/plenary.nvim' }, lazy = true}
-- }
--
-- local opts = {}
--
-- require("lazy").setup(plugins, opts)
