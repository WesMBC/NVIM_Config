-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
	"judaew/ronny.nvim",
    }
    use {
	"loctvl842/monokai-pro.nvim",
	config = function()
	    require("monokai-pro").setup()
	end
    }
    use {
	"polirritmico/monokai-nightasty.nvim",
	config = function()
	    require("monokai-nightasty").setup()
	end
    }

    use {
	"nvim-treesitter/nvim-treesitter",
	{run = ':TSUpdate'}
    }

    use {
	"ThePrimeagen/harpoon"
    }
    use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
	    --- Uncomment the two plugins below if you want to 
	    --- manage the language servers from neovim
	    {'williamboman/mason.nvim'},
	    {'williamboman/mason-lspconfig.nvim'},
	    {'neovim/nvim-lspconfig'},
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'L3MON4D3/LuaSnip'},
	}
    }
    use {
	'nvim-lualine/lualine.nvim',
	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	requires = {
	    "nvim-lua/plenary.nvim",
	    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	    "MunifTanjim/nui.nvim",
	    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	}
    }	use{
	"mattn/emmet-vim"
    }
    use {
	"andweeb/presence.nvim"
    }
    use{
	"nvim-tree/nvim-web-devicons"
    }
    use{
	"olrtg/nvim-emmet"
    }
    use{
	"hrsh7th/cmp-nvim-lsp"
    }
    use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
    })
    use{
	"rafamadriz/friendly-snippets"
    }
    -- Installation
    use {
	'hrsh7th/nvim-cmp',
	config = function ()
	    require'cmp'.setup {
		snippet = {
		    expand = function(args)
			require'luasnip'.lsp_expand(args.body)
		    end
		},

		sources = {
		    { name = 'luasnip' },
		    -- more sources
		},
	    }
	end
    }
    use {
	'saadparwaiz1/cmp_luasnip'
    }
end)
