"--------------------------------------------------------------
" vim-airline
" 狀態列： Airline & AirlineTheme

let g:airline_theme='deus'
" let g:airline_theme='powerlineish'
" let g:airline_theme='light'

let g:airline#extension#virtualenv#enabled = 0
let g:airline#extension#poetv#enabled = 0

set guifont=Sauce\ Code\ Pro\ Light\ Nerd\ Font\ Complete\ Windows\ Compatible:h11
let g:webdevicons_enable_vimfiler = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Status line
if !exists('*fugitive#statusline')
  set statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
  set statusline+=%=
  set statusline+=%{fugitive#statusline()}
endif

" 圖示 DevIcons
"
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = '🔒'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.dirty= '⚡'

" adding the custom source to unite
let g:webdevicons_enable_unite = 1

" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" Virtual Env
let g:airline#extension#virtualenv#enabled = 0
let g:airline#extension#poetv#enabled = 0

let g:airline_powerline_fonts = 1
