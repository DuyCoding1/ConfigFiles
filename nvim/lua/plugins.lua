vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    --packer
    use 'wbthomason/packer.nvim'
    --colorscheme
    use "craftzdog/solarized-osaka.nvim"
    -- use 'navarasu/onedark.nvim'
    -- Using Packer
    use 'nvim-tree/nvim-web-devicons'
    --plenary
    use { 'nvim-lua/plenary.nvim' }
    --tmux
    use "christoomey/vim-tmux-navigator"
    --window
    use({'mrjones2014/smart-splits.nvim',tag='v1.0.0'})
    --incline
    use "b0o/incline.nvim"
    -- move vim
    use 'fedepujol/move.nvim'
    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    --indent
    use "lukas-reineke/indent-blankline.nvim"
    --rename
    use {
        "smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup()
        end,
    }
    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        require = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- buffer
    use { 'akinsho/bufferline.nvim', tag = "*" }
    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    -- telescope
    use {'nvim-telescope/telescope.nvim', tag = '0.1.4',}
    use {'nvim-telescope/telescope-file-browser.nvim',
        require = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    -- auto tag
    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"
    -- lsp,mason,mason-lspconfig
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'NvChad/nvim-colorizer.lua'
    -- cmp , lspkind
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-emoji'
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    use 'saadparwaiz1/cmp_luasnip'
    use 'mtoohey31/cmp-fish'
    use 'onsails/lspkind.nvim'
    use ({
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require('lspsaga').setup({})
        end,
    })

    --null-lsp , pretitier
    use 'nvimtools/none-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    -- use 'MunifTanjim/eslint.nvim'
    -- --noice use "folke/noice.nvim"
    -- use 'MunifTanjim/nui.nvim'
    -- use 'rcarriga/nvim-notify'

end)
