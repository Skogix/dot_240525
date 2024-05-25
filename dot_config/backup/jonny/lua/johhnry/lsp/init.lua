-- Initial lspconfig plugin load
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("johhnry.lsp.mason")
require("johhnry.lsp.handlers").setup()
require("johhnry.lsp.null-ls")

-- Additional LSP related plugins
require("johhnry.lsp.plugins.trouble")
require("johhnry.lsp.plugins.illuminate")

-- Configure sign icons in gutter
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
