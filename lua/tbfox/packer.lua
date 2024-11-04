-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use({
		'EdenEast/nightfox.nvim',
		as = 'nightfox',
		config = function()
			vim.cmd('colorscheme nightfox')
		end

	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-treesitter/playground')
	use { 'theprimeagen/harpoon',
		branch = 'harpoon2',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- TODO: undo tree
	-- TODO: fugitive

	use('VonHeikemen/lsp-zero.nvim')
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use {
		'theHamsta/nvim_rocks',
		event = 'VimEnter', -- Equivalent to a "VeryLazy" load
		run = 'pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua',
		config = function()
			---- Add here the packages you want to make sure that they are installed
			-- local nvim_rocks = require "nvim_rocks"
			-- nvim_rocks.ensure_installed "uuid"
		end
	}
end)
