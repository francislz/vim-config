" COQ autostart
" let g:coq_settings = { 'auto_start': 'shut-up' }
" autocmd BufRead,BufNewFile * setlocal spell spelllang=en_us
" syntax match quoteblock /"[^"]\+"/ contains=@NoSpell

lua require('plugins')
lua require('init')
" highlight FloatBorder  ctermfg=NONE ctermbg=NONE cterm=NONE

