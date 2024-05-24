-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').load()
    end,
  },

  {
    'vhyrro/luarocks.nvim',
    priority = 1000,
    config = true,
  },
  require('mini.comment').setup(),
  --require('mini.animate').setup(),
  -- { 'nvim-tree/nvim-web-devicons' },
  -- { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons' },
  -- require('bufferline').setup {
  --   highlights = {
  --     buffer_selected = { bold = true },
  --     diagnostic_selected = { bold = true },
  --     info_selected = { bold = true },
  --     info_diagnostic_selected = { bold = true },
  --     warning_selected = { bold = true },
  --     warning_diagnostic_selected = { bold = true },
  --     error_selected = { bold = true },
  --     error_diagnostic_selected = { bold = true },
  --   },
  --   options = {
  --     show_close_icon = false,
  --     diagnostics = 'nvim_lsp',
  --     max_prefix_length = 8,
  --     diagnostics_indicator = function(count, level, diagnostics_dict, context)
  --       if context.buffer:current() then
  --         return ''
  --       end
  --       if level:match 'error' then
  --         return ' ' .. vim.g.diagnostic_icons.Error
  --       elseif level:match 'warning' then
  --         return ' ' .. vim.g.diagnostic_icons.Warning
  --       end
  --       return ''
  --     end,
  --     custom_filter = function(buf_number, buf_numbers)
  --       if vim.bo[buf_number].filetype ~= 'oil' then
  --         return true
  --       end
  --     end,
  --   },
  -- },
}
