-- npm install -g vim-language-server
require'lspconfig'["vim"].setup{
    cmd = {DATA_PATH .. "/lspinstall/vim/node_modules/.bin/vim-language-server", "--stdio"},
    on_attach = require("nd-lsp._lspconfig.nd-attachments.attch-global").on_attach_common,
	init_options = {
		diagnostic = {
			enable = true
		},
		indexes = {
			count = 3,
			gap = 100,
			projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
			runtimepath = true
		},
		iskeyword = "@,48-57,_,192-255,-#",
		runtimepath = "",
		suggest = {
			fromRuntimepath = true,
			fromVimruntime = true
		},
		vimruntime = ""
	},
	root_dir = vim.loop.cwd
}
-- require'lspconfig'.vimls.setup {
--     cmd = {DATA_PATH .. "/lspinstall/vim/node_modules/.bin/vim-language-server", "--stdio"},
--     on_attach = require("nd-lsp._lspconfig.nd-attachments.attch-global").on_attach_common
-- }