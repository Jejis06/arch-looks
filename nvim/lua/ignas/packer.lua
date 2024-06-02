-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "ellisonleao/gruvbox.nvim" }
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('mbbill/undotree')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
	use {
		"williamboman/mason.nvim"
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use (
	'ms-jpq/chadtree',
	{branch = 'chad', run =  'python3 -m chadtree deps'}
	)
	use (
	'nvim-tree/nvim-web-devicons'
	)
	-- use ( 'norcalli/nvim-colorizer.lua')
	use({
		"kylechui/nvim-surround",
		tag = "*",
		config = function()
			require("nvim-surround").setup({
			})
		end
	})
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	-- use('Bekaboo/dropbar.nvim')
	use {
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end
	}
	-- stable version
	use {"shortcuts/no-neck-pain.nvim", tag = "*" }
	use {'AckslD/muren.nvim'}
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
		config = function()
			require("barbecue").setup()
		end,
	})
	use {
		"fraso-dev/nvim-listchars",
	}
	use ("petertriho/nvim-scrollbar")
	use ('fedepujol/move.nvim')
	use ("aznhe21/actions-preview.nvim")
	use ("uga-rosa/ccc.nvim")
	use {'kevinhwang91/nvim-hlslens'}
	use { "soulis-1256/hoverhints.nvim" }


	-- use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
end)
