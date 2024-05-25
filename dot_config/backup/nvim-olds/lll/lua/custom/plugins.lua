local overrides = require("custom.configs.overrides")

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
    opts = overrides.mason
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
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
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "folke/zen-mode.nvim",
    lazy = false,
  },{
   'vimwiki/vimwiki',
    config = function()
        vim.g.vimwiki_list = {
            {
                path = '/home/xx/Documents/singularityOffice/wiki',
                syntax = 'markdown',
                ext = '.md',
            }
        }
    end,
    lazy = false,
  },
    {
        'jreybert/vimagit',
        lazy = false,
    },
    {
        'tpope/vim-fugitive',
        lazy = false,
    },
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
}

return plugins
