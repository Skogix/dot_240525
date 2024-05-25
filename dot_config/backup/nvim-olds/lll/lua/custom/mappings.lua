local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>c"] = { ":w<cr>:bd<cr>", "close buffer" }
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}
M.abc = {
  n = {
     ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
     ["<C-s>"] = {":Telescope find_files <CR>", "Telescope Files"}
  },

  -- i = {
  --    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  -- }
}

-- more keybinds!

return M
