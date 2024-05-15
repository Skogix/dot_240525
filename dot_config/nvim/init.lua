-- Rafael Bodill's Neovim entry-point
-- https://github.com/rafi/vim-config

local stdconfig = vim.fn.stdpath("config")
local lazy_override = stdconfig .. "/lua/config/lazy.lua"

vim.uv = vim.uv or vim.loop

if vim.uv.fs_stat(lazy_override) then
	-- Override RafiVim default config.
	require("config.lazy")
else
	-- Bootstrap lazy.nvim, RafiVim, LazyVim and your plugins.
	require("rafi.config.lazy")
end

-- let g:clipboard = {
--             \   'name': 'WslClipboard',
--             \   'copy': {
--             \      '+': 'clip.exe',
--             \      '*': 'clip.exe',
--             \    },
--             \   'paste': {
--             \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--             \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--             \   },
--             \   'cache_enabled': 0,
--             \ }
-- vim.opt.clipboard = "unnamedplus"
--
--
-- if vim.fn.has("wsl") == 1 then
-- 	vim.g.clipboard = {
-- 		name = "win32yank-wsl",
-- 		copy = {
-- 			["+"] = "win32yank.exe -i --crlf",
-- 			["*"] = "win32yank.exe -i --crlf",
-- 		},
-- 		paste = {
-- 			["+"] = "win32yank.exe -o --lf",
-- 			["*"] = "win32yank.exe -o --lf",
-- 		},
-- 		cache_enabled = 0,
-- 	}
-- end
--
