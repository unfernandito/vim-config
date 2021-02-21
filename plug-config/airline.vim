
" Airline setup and customize
"

" vim-airline
" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '‚ñ∂'
  let g:airline_left_alt_sep      = '¬ª'
  let g:airline_right_sep         = '‚óÄ'
  let g:airline_right_alt_sep     = '¬´'
  let g:airline#extensions#branch#prefix     = '‚§¥' "‚ûî, ‚û•, ‚éá
  let g:airline#extensions#readonly#symbol   = '‚äò'
  let g:airline#extensions#linecolumn#prefix = '¬∂'
  let g:airline#extensions#paste#symbol      = 'œÅ'
  let g:airline_symbols.linenr    = '‚êä'
  let g:airline_symbols.branch    = '‚éá'
  let g:airline_symbols.paste     = 'œÅ'
  let g:airline_symbols.paste     = '√û'
  let g:airline_symbols.paste     = '‚à•'
  let g:airline_symbols.whitespace = 'Œû'
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
