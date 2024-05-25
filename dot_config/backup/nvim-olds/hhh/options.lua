vim.opt.timeoutlen = 500
vim.opt.updatetime = 200
vim.opt.scrolloff = 8
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.cindent = true
vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.textwidth = 300
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1 -- If negative, shiftwidth value is used
vim.opt.list = true
-- Makes nevim.opt and host OS clipboard play nicely with each other
vim.opt.clipboard = 'unnamedplus'
-- Case insensitive searching UNLESS /C vim.opt capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Better buffer splitting
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Better fvim.opt (don't fold by default)
vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 99
vim.opt.foldnestmax = 3
vim.opt.foldminlines = 1
vim.opt.mouse = "a"
-- Productivity --
