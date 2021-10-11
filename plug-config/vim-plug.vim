" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

Plug 'vim-scripts/CSApprox'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'

Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'brooth/far.vim'
Plug 'tpope/vim-dotenv'

Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

Plug 'rbgrouleff/bclose.vim'

Plug 'ntpeters/vim-better-whitespace'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'rakr/vim-one'

if isdirectory('/usr/local/opt/fzf')
    Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'
else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'
endif

let g:make = 'gmake'
if exists('make')
    let g:make = 'make'
endif


Plug 'Shougo/vimproc.vim', {'do': g:make}
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'preservim/nerdtree'
Plug 'philrunninger/nerdtree-visual-selection'

"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque'

" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'
Plug 'yuezk/vim-js'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

Plug 'airblade/vim-rooter'
Plug 'wesQ3/vim-windowswap'

"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand("~/.config/nvim/local_bundles.vim"))
    source ~/.config/nvim/local_bundles.vim
endif


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
