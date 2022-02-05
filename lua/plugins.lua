vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'mhinz/vim-signify'

    use 'tpope/vim-fugitive'
    use 'shumphrey/fugitive-gitlab.vim'
    use 'tpope/vim-rhubarb' 

    use 'vim-scripts/CSApprox'
    use 'Raimondi/delimitMate'
    use 'majutsushi/tagbar'
    use 'Yggdroot/indentLine'

    use 'ryanoasis/vim-devicons'
    use 'joshdick/onedark.vim'

    use 'nvim-lua/plenary.nvim'
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'

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
    use 'rakr/vim-one'

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'windwp/nvim-spectre',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            }
        end
    }    
    
    use 'hail2u/vim-css3-syntax'
    use 'gko/vim-coloresque'

    use 'jelera/vim-javascript-syntax'
    use 'yuezk/vim-js'
    use 'styled-components/vim-styled-components'

    use 'leafgarland/typescript-vim'
    use 'HerringtonDarkholme/yats.vim'
    use 'peitalin/vim-jsx-typescript'

    use 'easymotion/vim-easymotion'
    use 'tpope/vim-surround'

    use 'airblade/vim-rooter'
    use 'wesQ3/vim-windowswap'
end)
