-- Configuration for clangd LSP server
-- Case 1. For CMake Users: $ cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON .
-- Case 2. For Bazel Users: use https://github.com/hedronvision/bazel-compile-commands-extractor
-- Case 3. If you don't use any build tool and all files in a project use the same build flags:
--     Place your compiler flags in the compile_flags.txt file, located in the root directory
--     of your project. Each line in the file should contain a single compiler flag.
-- src: https://clangd.llvm.org/installation#compile_commandsjson

-- src: https://github.com/neovim/nvim-lspconfig/blob/master/lsp/clangd.lua
---@type vim.lsp.Config
return {
	cmd = { "clangd", "--clang-tidy", "--background-index", "--offset-encoding=utf-8", "--fallback-style=Microsoft" },
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
	root_markers = {
		".clangd",
        ".background-index",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
        "comile_commands-dir=build",
		"compile_flags.txt",
		"configure.ac", -- AutoTools
        "header-insertion=iwyu",
        "cross-file-rename",
        "pch-storage=memory",
		".git",
	},
	settings = {
		InlayHints = {
			Designators = true,
			Enabled = true,
			ParameterNames = true,
			DeducedTypes = true,
		},
		fallbackFlags = { "-std=c++20" },
	},
}
