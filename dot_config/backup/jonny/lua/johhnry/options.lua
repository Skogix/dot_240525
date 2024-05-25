-- Number of spaces for indentation
local indent_spaces = 2

local options = {
	wrap = false, -- Don't wrap lines when too wide
	scrolloff = 8, -- Number of vertical lines to keep visible around cursor
	sidescrolloff = 8, -- Same for the horizontal lines
	cmdheight = 1, -- Vim command height
	clipboard = "unnamedplus", -- Use the system clipboard
	numberwidth = 4, -- Line number column width
	signcolumn = "yes", -- Show sign column for lines numbers
	smartindent = true, -- Smart indenting new for C-like languages
	timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)

	termguicolors = true, -- Set terminal GUI colors

	-- Line numbers (hybrid)
	relativenumber = true,
	number = true,

	-- Indent using spaces only
	tabstop = indent_spaces,
	shiftwidth = indent_spaces,
	softtabstop = -1,
	expandtab = true,
	smarttab = true,
}

-- Treating blocks with "-" as a whole word
vim.opt.iskeyword:append("-")

-- Disabling netrw file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Setting all vim options defined above
for k, v in pairs(options) do
	vim.opt[k] = v
end
