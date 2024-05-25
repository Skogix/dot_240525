




return {
--
--   -- Disable default tabline
--   { 'akinsho/bufferline.nvim', enabled = false },
--
--   -- And choose a different one!
--   -- { 'itchyny/lightline.vim' },
--   -- { 'vim-airline/vim-airline' },
--   -- { 'glepnir/galaxyline.nvim' },
--   -- { 'glepnir/spaceline.vim' },
--   -- { 'liuchengxu/eleline.vim' },
--
--   -- Enable GitHub's Copilot
--   -- { import = 'rafi.plugins.extras.coding.copilot' },
--
--   -- Enable incline, displaying filenames on each window
--   { import = 'rafi.plugins.extras.ui.incline' },
--
--   -- Disable built-in plugins
--   { 'shadmansaleh/lualine.nvim', enabled = false },
--   { 'limorris/persisted.nvim', enabled = false },
--
  -- Change built-in plugins' options
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'bash', 'comment', 'css', 'diff', 'dockerfile', 'fish',
        'gitcommit', 'gitignore', 'gitattributes', 'git_rebase', 'go', 'gomod',
        'gosum', 'gowork', 'graphql', 'hcl', 'html', 'javascript', 'jsdoc',
        'json', 'json5', 'jsonc', 'jsonnet', 'lua', 'make', 'markdown',
        'markdown_inline', 'nix', 'perl', 'php', 'pug', 'python', 'regex',
        'rst', 'ruby', 'rust', 'scss', 'sql', 'svelte', 'terraform', 'toml',
        'tsx', 'typescript', 'vim', 'vimdoc', 'vue', 'yaml', 'zig',
      },
    },
  },

}
