local util = require 'lspconfig.util'

local root_files = {
	'.clangd',
	'.clang-tidy',
	'.clang-format',
	'compile_commands.json',
	'compile_flags.txt',
	'compile', -- buildProject
	'configure.ac', -- AutoTools
	'run'
}


return {
	cmd = {
		"bash-language-server",
		"start",
	},
	cmd_env = {
		GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
	},
	filetype = {
		"sh",
		"zsh",
		"bash",
	},
	root_dir = function(fname)
		return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
	end,
	single_file_support = true,
}

