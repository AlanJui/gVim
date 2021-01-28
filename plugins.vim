"==============================================================
" Nvim 擴充套件設定檔
"==============================================================


" check whether vim-plug is installed and install it if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif


"==============================================================
" 擴充套件安裝
"==============================================================


call plug#begin('~/.vim/plugged')

"--------------------------------------------------------------
" 程式編輯

" Auto-complete (Intellisense Engine)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'neoclide/coc-denite'

" Snippets support
Plug 'honza/vim-snippets'
Plug 'https://github.com/andys8/vscode-jest-snippets.git'

" Auto-pairs
Plug 'jiangmiao/auto-pairs/'
Plug 'tpope/vim-surround' 

" Comment code
Plug 'scrooloose/nerdcommenter'

" Multiple cursor editting
Plug 'terryma/vim-multiple-cursors'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" Working with Django Project
Plug 'jmcomets/vim-pony'


"--------------------------------------------------------------
" 程式排版 & 視覺導引

" Code folding
Plug 'tmhedberg/SimpylFold'

" Displaying thin vertical lines
Plug 'Yggdroot/indentLine'

" === Syntax Highlighting === "

" Syntax for json with comments
Plug 'neoclide/jsonc.vim'

" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'

" Syntax highlighting for javascript libraries
" Plug 'othree/javascript-libraries-syntax.vim'


"--------------------------------------------------------------
" 檔案操作

" Denite - Fuzzy finding, buffer management
Plug 'Shougo/denite.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'chemzqm/denite-git'

" File manage and exploration
Plug 'francoiscabrol/ranger.vim' 

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'


"--------------------------------------------------------------
" 使用者操作介面

" Support True Color
" Plug 'ayu-theme/ayu-vim'
" Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhartington/oceanic-next'

" Color Scheme
" Plug 'joshdick/onedark.vim'
" Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
" Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
" Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }

" Color Scheme for syntax
" Plug 'sheerun/vim-polyglot'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'bling/vim-bufferline'

" Add file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline
Plug 'ryanoasis/vim-devicons'

"--------------------------------------------------------------
" 其它 

" PlantUML
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" Markdown Preview
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

call plug#end()


"==============================================================
" 擴充套件設定
"==============================================================

" 設定 <Leader> 鍵
let mapleader = ","


"--------------------------------------------------------------
" indentLine

let g:indentLine_enabled = 0
let g:indentLine_showFirstIndentLevel = 1

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}


" We need to define them here to avoid issues when running in the terminal
" if g:colors_name ==# 'heraldish'
"     let g:indentLine_color_gui = '#666462' " mediumgravel
"     let g:indentLine_color_term = 241
" elseif g:colors_name ==# 'onedarkish'
"     let g:indentLine_color_gui = '#5c6370' " comment_grey
"     let g:indentLine_color_term = 59
" endif

" nnoremap <silent> <leader>M :IndentLinesToggle<cr>
nnoremap <silent> si :IndentLinesToggle<cr>


"--------------------------------------------------------------
" === echodoc === "
" Enable echodoc on startup
let g:echodoc#enable_at_startup = 1


" 多重游標操作
" Multiple cursors support 
" URL: https://github.com/neoclide/coc.nvim/wiki/Multiple-cursors-support

" hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

" Start multiple cursors session
" more vscode like behavior
nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc


"--------------------------------------------------------------
" Markdown Preview
" let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 1
" let g:instant_markdown_open_to_the_world = 1
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 0
" let g:instant_markdown_mathjax = 1
let g:instant_markdown_logfile = '~/log/instant_markdown.log'
" let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
" let g:instant_markdown_python = 1
" set shell=bash\ -i
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

noremap <Leader>mp :InstantMarkdownPreview<CR>  
noremap <Leader>mc :InstantMarkdownStop<CR>  


"--------------------------------------------------------------
" UML :  :!makeprg %
autocmd FileType plantuml setlocal shiftwidth=2 tabstop=2 softtabstop=2
let g:plantuml_executable_script = 'makeprg'
let g:plantuml_set_makeprg = 1

autocmd FileType plantuml nnoremap <buffer> <Leader>b :!java -jar ~/bin/plantuml.jar -tpng -o %:p:h %<cr>


"--------------------------------------------------------------
" 註解標示：scrooloose/nerdcommenter
"
" (1) Comment out the current line or text selected in visual mode.
"     : [count]<Leader>cc
"nmap <Leader>cc :NERDCommenterComment<CR>

" (2) Uncomments the selected line(s). ==> [count]<Leader>cu
"nmap <Leader>cu :NERDCommenterUncomment<CR>

" nerdcommenter: Comment code
" https://vimawesome.com/plugin/nerdcommenter-may-fear-less
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" nmap <C-/> <plug>NERDCommenterToggle
" vmap <C-/> <plug>NERDCommenterToggle

nmap <C-\/> :NERDComToggleComment<CR>
vmap <C-\/> :NERDComToggleComment<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle


"--------------------------------------------------------------
" 輸入自動配對：jiangmiao/auto-pairs: https://vimawesome.com/plugin/auto-pairs
" System Shortcuts:
"   <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"   <BS>  : Delete brackets in pair
"   <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"   <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"   <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"   <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)
"   
" If <M-p> <M-e> or <M-n> conflict with another keys or want to bind to another keys, add
"
"    let g:AutoPairsShortcutToggle = '<another key>'


" let g:AutoPairsFlyMode = 1
" let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:AutoPairs = {
    \'(':')',
    \'[':']',
    \'{':'}',
    \"'":"'",
    \'"':'"',
    \"`":"`",
    \"{#":"#}",
    \"{%":"%}",
    \'```':'```',
    \'"""':'"""',
    \"'''":"'''"
    \}

" Buffer level pairs setting
autocmd FileType html  let b:AutoPairs = AutoPairsDefine({'{#' : '#}'})
autocmd FileType htmldjango let b:AutoPairs = AutoPairsDefine({'{#' : '#}', '{%' : '%}', '{{' : '}}'})
autocmd FileType css let b:AutoPairs = AutoPairsDefine({'{' : '}'})


"--------------------------------------------------------------
" 'tpope/vim-surround' 
" To use in visual mode (select some text first):
" type 'Sv' or 'S{' for a variable
" type 'Sb' for a block
" type 'Si' for an if statement
" type 'Sw' for a with statement
" type 'Sc' for a comment
" type 'Sf' for a for statement
" type 'S%' for other template tags

let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"


"--------------------------------------------------------------
" 程式碼開展與折疊操作：SimplyFold
"
" - zo： Open fold in current cursor postion
" - zO： Open fold and sub-fold in current cursor postion recursively
" - zc： Close the fold in current cursor position
" - zC： Close the fold and sub-fold in current cursor position recursively

" Set the default to unfolded when a file is opened
set foldmethod=indent
set foldlevel=99

" autocmd BufRead * normal zR

" autocmd BufWinLeave * mkview
" autocmd BufWinEnter * silent loadview

" Preview docstring in fold textd
let g:SimpylFold_docstring_preview = 0

" Fold docstrings   1
let g:SimpylFold_fold_docstring = 0

" Fold docstrings (buffer local)    1
let b:SimpylFold_fold_docstring = 0

" Fold imports  1
let g:SimpylFold_fold_import = 0

" Fold imports (buffer local)   1
let b:SimpylFold_fold_import = 0

" 拆疊／展開開關
nmap <Space> za

" Ref: https://vim.fandom.com/wiki/Folding  [Mappings to toggle folds]
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


"==================================================================
" 檔案作業
"
" 快速檔案搜尋與切換
" Denite.nvim : https://blog.evercoding.net/post/2019/neovim-plugin-denite/
" denite : https://www.zhihu.com/question/263990031
"==================================================================


" Wrap in try/catch to avoid errors on initial install before plugin is available
try
  " === Denite setup ==="
  " Use ripgrep for searching current directory for files
  " By default, ripgrep will respect rules in .gitignore
  "   --files: Print each file that would be searched (but don't search)
  "   --glob:  Include or exclues files for searching that match the given glob
  "            (aka ignore .git files)
  "
  call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

  " Use ripgrep in place of "grep"
  call denite#custom#var('grep', 'command', ['rg'])

  " Custom options for ripgrep
  "   --vimgrep:  Show results with every match on it's own line
  "   --hidden:   Search hidden directories and files
  "   --heading:  Show the file name above clusters of matches from each file
  "   --S:        Search case insensitively if the pattern is all lowercase
  call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

  " Recommended defaults for ripgrep via Denite docs
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])

  " Remove date from buffer list
  call denite#custom#var('buffer', 'date_format', '')

  " Custom options for Denite
  "   auto_resize             - Auto resize the Denite window height automatically.
  "   prompt                  - Customize denite prompt
  "   direction               - Specify Denite window direction as directly below current pane
  "   winminheight            - Specify min height for Denite window
  "   highlight_mode_insert   - Specify h1-CursorLine in insert mode
  "   prompt_highlight        - Specify color of prompt
  "   highlight_matched_char  - Matched characters highlight
  "   highlight_matched_range - matched range highlight
  let s:denite_options = {'default' : {
    \ 'split': 'floating',
    \ 'start_filter': 1,
    \ 'auto_resize': 1,
    \ 'source_names': 'short',
    \ 'prompt': 'λ ',
    \ 'statusline': 0,
    \ 'highlight_matched_char': 'QuickFixLine',
    \ 'highlight_matched_range': 'Visual',
    \ 'highlight_window_background': 'Visual',
    \ 'highlight_filter_background': 'DiffAdd',
    \ 'winrow': 1,
    \ 'vertical_preview': 1
    \ }}

  " Loop through denite options and enable them
  function! s:profile(opts) abort
    for l:fname in keys(a:opts)
      for l:dopt in keys(a:opts[l:fname])
        call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
      endfor
    endfor
  endfunction

  call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry

"--------------------------------------------------------------
" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

"--------------------------------------------------------------
" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-i>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction


"--------------------------------------------------------------
" Denite 快速鍵
"   sb - Browser currently open buffers
"   sf - Browse list of files in current directory
"   sg - Search current directory for occurences of given term and close window if no results
"   sc - Search current directory for occurences of word under cursor
nmap <Leader>sb :Denite buffer<CR>
nmap <Leader>sf :DeniteProjectDir file/rec<CR>
nmap <Leader>sg :<C-u>Denite grep:. -no-empty<CR>
nmap <Leader>sc :<C-u>DeniteCursorWord grep:.<CR>
nmap <C-o> :Denite buffer<CR>
nmap <C-p> :DeniteProjectDir file/rec<CR>



"--------------------------------------------------------------
" vim-airline

let g:airline#extension#virtualenv#enabled = 0
let g:airline#extension#poetv#enabled = 0
