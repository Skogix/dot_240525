local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettierd.with({ extra_filetypes = { "svelte" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
		formatting.rustfmt,
		formatting.prismaFmt,
		formatting.raco_fmt,
		formatting.ocamlformat,
		formatting.ktlint,
		diagnostics.ktlint,
		formatting.haxe_formatter,
		formatting.csharpier,
		diagnostics.eslint_d,
		formatting.eslint_d,
		formatting.taplo,
		formatting.latexindent,
		formatting.google_java_format,
		diagnostics.ruff.with({
			prefer_local = ".venv/bin",
		}),
		diagnostics.mypy.with({
			prefer_local = ".venv/bin",
		}),
	},
})
