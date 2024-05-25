-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    [";"] = { ":", desc = "Command mode" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save




    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },              -- change description but the same command
    ["<S-l>"] = { ":bnext<cr>", desc = "Next buffer" },         -- change description but the same command
    ["<S-h>"] = { ":bprevious<cr>", desc = "Previous buffer" }, -- change description but the same command
    ["N"] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Next diagnostic" },
    -- keymap("n", "-", "<cmd>HopWordMW<cr>")
    -- keymap("n", "f", "<cmd>HopChar1CurrentLine<cr>")
    -- keymap("n", "sh", "<cmd>lua vim.lsp.buf.hover()<cr>")
    -- ["<leader>w"] = { "<cmd>lua require'telekasten'.panel()<cr>", desc = "Telekasten" },
    -- ["<leader>ws"] = { "<cmd>lua require'telekasten'.search_notes()<cr>", desc = "Telekasten" },
    -- ["<leader>w"] = {
    --   "<cmd>lua require'telekasten'.panel()<cr>",
    --   desc = "Wiki",
    --   ["c"] = { "<cmd>CalendarT<cr>", desc = "Calendar" },
    --   ["s"] = { "<cmd>lua require'telekasten'.find_notes()<cr>", desc = "Find notes" },
    --   ["/"] = { "<cmd>lua require'telekasten'.search_notes()<cr>", desc = "Search notes" },
    --   ["n"] = { "<cmd>lua require'telekasten'.new_note()<cr>", desc = "New note" },
    --   ["t"] = { "<cmd>lua require'telekasten'.show_tags()<cr>", desc = "Show tags" },
    --   ["i"] = { "<cmd>lua require'telekasten'.insert_link()<cr>", desc = "Insert link" },
    --   ["r"] = { "<cmd>lua require'telekasten'.rename_note()<cr>", desc = "Rename note" },
    --   ["w"] = { "<cmd>lua require'telekasten'.goto_today()<cr>", desc = "Todays diary" },
    --   ["<C-leader>"] = { ":lua require'telekasten'.toggle_todo({v=true})<cr>", desc = "Toggle todo" },
    -- },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

-- keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
-- keymap("n", "<leader>nd", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
-- keymap("n", "<leader>pd", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
-- keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<cr>", opts)
-- keymap("n", "-", "<cmd>HopWordMW<cr>")
-- keymap("n", "f", "<cmd>HopChar1CurrentLine<cr>")
-- keymap("n", "sh", "<cmd>lua vim.lsp.buf.hover()<cr>")
