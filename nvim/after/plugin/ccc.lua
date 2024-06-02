vim.opt.termguicolors = true
local ccc = require("ccc")
vim.keymap.set('n', '<leader>c',":CccPick<CR>")

ccc.setup({
	highlighter = {
		auto_enable = true,
		lsp = true,
	},
})
