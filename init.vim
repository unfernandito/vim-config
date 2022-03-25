
"*****************************************************************************
"" Vim-Plug core
"*****************************************************************************

if has('win32')&&!has('win64')
    let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
    let curl_exists=expand('curl')
end

let g:vim_bootstrap_langs = "html,javascript,typescript"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim


lua require('plugins')
lua require("lsp-config")
lua require("cmp-config")
lua require("telescope-config")
lua require("treesitter-config")
lua require("toggleterm-config")
lua require("statusline-config")
lua require("diffview-config")
lua require("auto-session-config")

source $HOME/.config/nvim/plug-config/theme.vim
source $HOME/.config/nvim/plug-config/autocmd.vim
source $HOME/.config/nvim/plug-config/shortcuts.vim
source $HOME/.config/nvim/plug-config/variables.vim

source $HOME/.config/nvim/plug-config/settings.vim

"" Include user's local vim config
if filereadable(expand("~/.config/nvim/local_init.vim"))
  source ~/.config/nvim/local_init.vim
endif
" END config files

au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=3

