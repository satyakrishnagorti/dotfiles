require("lazy").setup({
    {
        "stevearc/aerial.nvim",
        cmd = "AerialToggle",
        config = function()
            require("plugin-configs.aerial")
        end,
    },
    {
        "akinsho/bufferline.nvim",
        lazy = false,
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup{}
            -- require("plugin-configs.bufferline")
        end,
    },
    {
        "numToStr/Comment.nvim",
        event = "VeryLazy",
        config = function()
            require("Comment").setup()
        end,
    },
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
        config = function()
            require("plugin-configs.dressing")
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VimEnter",
        config = function()
            require("plugin-configs.gitsigns")
        end,
    },
    {
        "HakonHarnes/img-clip.nvim",
        event = "BufEnter",
    },
    {
        "glepnir/lspsaga.nvim",
        event = "VimEnter",
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VimEnter",
        config = function()
            require("plugin-configs.lualine")
        end,
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        event = "VimEnter",
        branch = "v2.x",
        config = function()
            require("plugin-configs.lsp")
        end,
        dependencies = {
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
        },
    },
    {
        "folke/neodev.nvim",
        event = "VeryLazy",
        config = function()
            require("plugin-configs.neodev")
        end,
    },
    {
        "karb94/neoscroll.nvim",
        event = "VeryLazy",
        config = function()
            require("plugin-configs.neoscroll")
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        event = "VimEnter",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            require("plugin-configs.neo-tree")
        end,
    },

    {
        "nvimtools/none-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("plugin-configs.null-ls")
        end,
        dependencies = {
            {
                "jay-babu/mason-null-ls.nvim",
                cmd = { "NullLsInstall", "NullLsUninstall" },
                config = function()
                    require("plugin-configs.mason-null-ls")
                end,
            },
        },
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("plugin-configs.autopairs")
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = function()
            require("plugin-configs.cmp")
        end,
        dependencies = {
            { "onsails/lspkind.nvim" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lua" },
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    },
    {
        "NvChad/nvim-colorizer.lua",
        event = "VimEnter"
    },
    {
        "mfussenegger/nvim-dap",
        event = "VeryLazy",
        config = function()
            require("plugin-configs.dap")
        end,
        dependencies = {
            {
                "jay-babu/mason-nvim-dap.nvim",
                cmd = { "DapInstall", "DapUninstall" },
                config = function()
                    require("plugin-configs.mason-nvim-dap")
                end,
            },
            {
                "rcarriga/nvim-dap-ui",
                config = function()
                    require("dapui").setup()
                end,
            },
            {
                "theHamsta/nvim-dap-virtual-text",
                config = function()
                    require("nvim-dap-virtual-text").setup()
                end,
            },
        },
    },
    {
        "rcarriga/nvim-notify",
        lazy = false,
    },
    {
        "kylechui/nvim-surround",
        cmd = "VimEnter",
        config = function()
            require("nvim-surround").setup()
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
        config = function()
            require("plugin-configs.treesitter")
        end,
        dependencies = {
            { "nvim-treesitter/nvim-treesitter-textobjects" },
            {
                "nvim-treesitter/nvim-treesitter-context",
                config = function()
                    require("treesitter-context").setup()
                end,
            },
            { "windwp/nvim-ts-autotag" },
            { "HiPhish/rainbow-delimiters.nvim" },
            { "JoosepAlviste/nvim-ts-context-commentstring" },
        },
    },
    {
        "navarasu/onedark.nvim",
    },
    {
        "nvim-lua/plenary.nvim"
    },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        config = function()
            require("plugin-configs.telescope")
        end,
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
    },
    {
        "akinsho/toggleterm.nvim",
        event = "VeryLazy",
        config = function()
            _G.term = require("plugin-configs.toggleterm")
        end,
    },
    {
        "folke/trouble.nvim",
        cmd = { "TroubleToggle", "Trouble" },
    },
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
    },
    {
        "RRethy/vim-illuminate",
        event = "VeryLazy",
    },
    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
    },
}, {
    defaults = { lazy = true },
    performance = {
        rtp = {
            disabled_plugins = { "tohtml", "gzip", "zipPlugin", "netrwPlugin", "tarPlugin" },
        },
    },
})

