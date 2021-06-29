
"*****************************************************************************
"" Vim-Plug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
    let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
    let curl_exists=expand('curl')
end

let g:vim_bootstrap_langs = "html,javascript,typescript"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim
let g:vim_bootstrap_theme = "darkone"
let g:vim_bootstrap_frams = ""

" My config files
"

source $HOME/.config/nvim/plug-config/vim-plug.vim
source $HOME/.config/nvim/plug-config/airline.vim
"" source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/theme.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/autocmd.vim
"" source $HOME/.config/nvim/plug-config/grep.vim
source $HOME/.config/nvim/plug-config/shortcuts.vim
source $HOME/.config/nvim/plug-config/variables.vim
"" source $HOME/.config/nvim/plug-config/far.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim

source $HOME/.config/nvim/plug-config/settings.vim


"" Include user's local vim config
if filereadable(expand("~/.config/nvim/local_init.vim"))
  source ~/.config/nvim/local_init.vim
endif
" END config files

au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=3

