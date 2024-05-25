local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>u"] = { ":UndotreeToggle<cr>:UndotreeFocus<cr>", "UndoTree" },
    ["<leader>x"] = { ":w<cr>:bd<cr>", "close buffer" },
    ["<leader>ldb"] = { "DB MYSQL://root:skogsund1/test<cr>", "Connect to the database" },
    ["<C-n>"] = { "<cmd> Telescope <CR>", "Telescope" },
    ["<C-s>"] = { ":Telescope find_files <CR>", "Telescope Files" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}
return M
