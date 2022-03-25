vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --use 'vim-airline/vim-airline'
    --use 'vim-airline/vim-airline-themes'
    use 'beauwilliams/statusline.lua'

    use 'mhinz/vim-signify'

    use 'tpope/vim-fugitive'
    use 'shumphrey/fugitive-gitlab.vim'
    use 'tpope/vim-rhubarb' 

    use 'vim-scripts/CSApprox'
    use 'Raimondi/delimitMate'
    use 'majutsushi/tagbar'
    use 'Yggdroot/indentLine'

    use 'ryanoasis/vim-devicons'
    use 'folke/tokyonight.nvim'
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use 'rmagatti/auto-session'

    use 'nvim-lua/plenary.nvim'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'folke/lsp-colors.nvim'
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
            }
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'brooth/far.vim'
    use 'tpope/vim-dotenv'

    use 'liuchengxu/vim-which-key'

    use 'rbgrouleff/bclose.vim'

    use 'ntpeters/vim-better-whitespace'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = { {'kyazdani42/nvim-web-devicons'} }
    }

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'windwp/nvim-spectre',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- use 'hail2u/vim-css3-syntax'
    use 'gko/vim-coloresque'

    -- use 'jelera/vim-javascript-syntax'
    -- use 'yuezk/vim-js'
    -- use 'styled-components/vim-styled-components'

    -- use 'leafgarland/typescript-vim'
    -- use 'HerringtonDarkholme/yats.vim'
    -- use 'peitalin/vim-jsx-typescript'

    use 'airblade/vim-rooter'
    use 'wesQ3/vim-windowswap'

    use 'akinsho/toggleterm.nvim'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
end)
