
" Airline setup and customize
"

" vim-airline
" vim-airline
let g:airline_theme = 'angr'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_extensions = ['branch', 'hunks', 'coc']
let g:airline#extensions#coc#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''  
  let g:airline#extensions#branch#prefix     = '‚§¥' "‚ûî, ‚û•, ‚éá
  let g:airline#extensions#readonly#symbol   = '‚äò'
  let g:airline#extensions#linecolumn#prefix = '¬∂'
  let g:airline#extensions#paste#symbol      = 'œÅ'
  let g:airline_symbols.linenr    = 'LINE '
  let g:airline_symbols.branch    = 'BRANCH'
  let g:airline_symbols.paste     = 'PASTE '
  let g:airline_symbols.whitespace = ' '
else
  let g:airline#extensions#tabline#left_sep = 'ÓÇ∞'
  let g:airline#extensions#tabline#left_alt_sep = 'ÓÇ±'

  " powerline symbols
  let g:airline_left_sep = 'ÓÇ∞'
  let g:airline_left_alt_sep = 'ÓÇ±'
  let g:airline_right_sep = 'ÓÇ≤'
  let g:airline_right_alt_sep = 'ÓÇ≥'
  let g:airline_symbols.branch = 'ÓÇ†'
  let g:airline_symbols.readonly = 'ÓÇ¢'
  let g:airline_symbols.linenr = 'ÓÇ°'
endif
