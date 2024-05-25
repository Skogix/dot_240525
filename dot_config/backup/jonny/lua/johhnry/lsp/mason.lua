-- Installed servers that need to be configured
local mason_servers = {
	"bashls",
	"clangd",
	"cmake",
	"csharp_ls",
	"cssls",
	"dockerls",
	"haxe_language_server",
	"html",
	"intelephense",
	"jdtls",
	"jsonls",
	"kotlin_language_server",
	"lua_ls",
	"ocamllsp",
	"prismals",
	"pyright",
	"ruff_lsp",
	"rust_analyzer",
	"svelte",
	"taplo",
	"texlab",
	"tsserver",
}

local other_servers = {
	"racket_langserver",
}

local mason_settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 5,
}

-- Initialize Mason (lsp packages installer)
require("mason").setup(mason_settings)
require("mason-lspconfig").setup({
	ensure_installed = mason_servers,
	automatic_installation = true,
})

local lspconfig = require("lspconfig")
local handlers = require("johhnry.lsp.handlers")

-- Initializing each LSP servers with optional custom settings
local servers = vim.tbl_deep_extend("force", mason_servers, other_servers)
local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = handlers.on_attach,
		capabilities = handlers.capabilities,
	}

	server = vim.split(server, "@")[1]

	-- Require that ./settings/{server}.lua file
	local require_ok, conf_opts = pcall(require, "johhnry.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
