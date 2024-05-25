local colorscheme = "catppuccin"

local colorscheme_exist, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not colorscheme_exist then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
