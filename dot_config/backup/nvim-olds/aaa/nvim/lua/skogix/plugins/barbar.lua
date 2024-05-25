return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    lazy = false,
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    keys = {
      { "<S-h>", "<cmd>BufferPrevious<cr>", desc = "Previous Buffer" },
      { "<S-l>", "<cmd>BufferNext<cr>",     desc = "Next Buffer" },
      { "<C-c>", "<cmd>BufferClose<cr>",    desc = "Close Buffer" },
      { "<S-c>", "<cmd>BufferClose<cr>",    desc = "Close Buffer" },
    },
  },
}
