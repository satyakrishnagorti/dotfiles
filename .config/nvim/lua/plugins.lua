require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use {
        "akinsho/toggleterm.nvim", tag = 'v2.*',
        config = function()
            local toggleterm_opts = require('settings').toggleterm_opts
            require("toggleterm").setup(toggleterm_opts)
        end
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        config = function()
            require('bufferline').setup()
        end
    }
    use 'vim-utils/vim-man'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v2.x",
        requires = {
            "MunifTanjim/nui.nvim",
        }
    }

    -- Themes
    use 'morhetz/gruvbox'
    use {
        'sonph/onehalf',
        rtp = 'vim'
    }
    use 'joshdick/onedark.vim'
    use {
        'dracula/vim',
        as = 'dracula'
    }
    use 'arzg/vim-colors-xcode'
    use 'EdenEast/nightfox.nvim'

    use 'nvim-telescope/telescope.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'RRethy/vim-illuminate'

    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }

    use 'ray-x/lsp_signature.nvim'
    use 'nvim-lua/lsp-status.nvim'
    use 'simrat39/symbols-outline.nvim'

    -- Statusline
    use 'nvim-lualine/lualine.nvim'

    -- Rust
    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'

    -- Debugging
    use 'mfussenegger/nvim-dap'
end)
