if executable('rg')
  call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading', '--ignore-case'])
else
  call denite#custom#var('file/rec', 'command',
      \ ['grep', '--follow', '--nocolor', '--nogroup', '-g', ''])
endif

" allow grep source filtering on either path or text
call denite#custom#source('grep', 'converters', ['converter_abbr_word'])

call denite#custom#map('insert', '<C-h>', '<denite:move_to_first_line>', 'noremap')
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-l>', '<denite:move_to_last_line>', 'noremap')

call denite#custom#option('default', 'prompt', '>')
call denite#custom#option('default', 'cursor_wrap', v:true)

nnoremap <C-f> :Denite -direction=topleft file/rec<CR>
nnoremap <space>/ :Denite -direction=topleft grep<CR>
nnoremap <space>f :Denite -direction=topleft -no-quit -mode=normal grep:.<CR>
nnoremap <space>s :Denite -direction=topleft buffer<CR>
