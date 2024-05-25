-- Override Cosmic editor options

local map = require('cosmic.utils').map
local opt = vim.opt

--[[ test ]]

-- Default leader is <space>
-- g.mapleader = ','

-- Default indent = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.o.undofile = true

-- Add additional keymaps or disable existing ones
-- To view maps set, use `:Telescope keymaps`
-- or `:map`, `:map <leader>`
