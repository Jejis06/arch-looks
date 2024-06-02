vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- vim.cmd("set clipboard+=unnamedplus")
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- vim keybindings
vim.cmd([[
	inoremap <C-l> <right>
	inoremap <C-h> <left>
	inoremap <C-k> <up>
	inoremap <C-j> <down>
	inoremap <C-w> <ESC>wi
	inoremap <C-b> <ESC>bi
	inoremap <PageDown> <Nop>
	nnoremap <PageDown> <Nop>
	inoremap <C-s> <ESC>:w<CR>
	nnoremap <C-s> :w<CR>
	inoremap <C-c> <ESC>:q<CR>
	nnoremap <C-c> :q<CR>
	nnoremap <C-a> ggVG

	set tabstop=8
	set shiftwidth=8
	set nowrap
	
]])

-- selecting move - Now done with move.nvim
-- vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv'")
-- vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv'")

-- fixes
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
