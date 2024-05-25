local default_schemas = nil
local status_ok, jsonls_settings = pcall(require, "nlspsettings.jsonls")
if status_ok then
	default_schemas = jsonls_settings.get_default_schemas()
end

local schemas = {
	{
		description = "TypeScript compiler configuration file",
		fileMatch = {
			"tsconfig.json",
			"tsconfig.*.json",
		},
		url = "https://json.schemastore.org/tsconfig.json",
	},
	{
		description = "Haxe formatter config",
		fileMatch = { "hxformat.json" },
		url = "https://raw.githubusercontent.com/HaxeCheckstyle/haxe-formatter/master/resources/hxformat-schema.json",
	},
	{
		description = "NodeJS package.json",
		fileMatch = { "package.json" },
		url = "https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/package.json",
	},
	{
		description = "ESLint configuration",
		fileMatch = { ".eslintrc.json" },
		url = "https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/schemas/json/eslintrc.json",
	},
}

local function extend(tab1, tab2)
	for _, value in ipairs(tab2 or {}) do
		table.insert(tab1, value)
	end
	return tab1
end

local extended_schemas = extend(schemas, default_schemas)

local opts = {
	settings = {
		json = {
			schemas = extended_schemas,
		},
	},
	setup = {
		commands = {
			Format = {
				function()
					vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
				end,
			},
		},
	},
}

return opts
