-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set
map("n", ";", ":", { desc = "", remap = true })
map("n", "<leader>sp", "<cmd>:Telescope projects<cr>", { desc = "Projects", remap = true })
map("n", "<leader>wiki", "<cmd>:VimwikiIndex<cr>", { desc = "Projects", remap = true })
