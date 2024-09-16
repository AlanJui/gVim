"===========================================================
" Maintainer:
"       Alan Jui : alanjui.1960@gmail.com
" Version:
"       V 0.7.0    2021/02/09 20:56
"===========================================================

scriptencoding utf-8
set shell=$SHELL
set nocompatible
let g:mapleader = ","

au FocusGained,BufEnter * :silent! checktime
au FocusLost,WinLeave * :silent! w

"===========================================================
" 擴充套件(Plugins)
"===========================================================
" 需安裝之擴充套件
source C:\Users\AlanJui\vimfiles\plugins.vim

" 擴充套件設定（Configuration of Plugins)
source C:\Users\AlanJui\vimfiles\config\nerdtree.rc.vim
source C:\Users\AlanJui\vimfiles\config\ranger.vim
source C:\Users\AlanJui\vimfiles\config\fzf.vim
source C:\Users\AlanJui\vimfiles\config\surround.vim
source C:\Users\AlanJui\vimfiles\config\auto-pairs.vim
source C:\Users\AlanJui\vimfiles\config\multiple-cursors.vim
source C:\Users\AlanJui\vimfiles\config\simply-fold.vim
source C:\Users\AlanJui\vimfiles\config\nerd-commenter.vim
source C:\Users\AlanJui\vimfiles\config\change-tag-name.vim
source C:\Users\AlanJui\vimfiles\config\live-server.vim
source C:\Users\AlanJui\vimfiles\config\markdown-preview.vim
source C:\Users\AlanJui\vimfiles\config\window-swap.vim
source C:\Users\AlanJui\vimfiles\config\float-term.vim
source C:\Users\AlanJui\vimfiles\config\echodoc.vim
source C:\Users\AlanJui\vimfiles\config\plantuml-previewer.vim
source C:\Users\AlanJui\vimfiles\config\find-and-replace.vim
source C:\Users\AlanJui\vimfiles\config\vim-closetag.vim

"===========================================================
" Vim 通用設定
"===========================================================
source C:\Users\AlanJui\vimfiles\global.vim

"==========================================================
" 程式碼版面與格式設定
"==========================================================
source C:\Users\AlanJui\vimfiles\format.vim

" Fix conflicts with indentLine and vim-json
let g:vim_json_syntax_conceal=0
let g:indentLine_noConcealCursor=""
let g:indentLine_noConcealCursor="nc"

"==========================================================
" COC-NVIM 配合環境
" https://github.com/neoclide/coc.nvim/wiki/Language-servers#bash
"==========================================================
source C:\Users\AlanJui\vimfiles\coc-nvim.vim
source C:\Users\AlanJui\vimfiles\my-coc-config.vim
source C:\Users\AlanJui\vimfiles\config\coc-explorer.vim

"==========================================================
" 快速鍵設定
"==========================================================
source C:\Users\AlanJui\vimfiles\keymap.vim

source C:\Users\AlanJui\vimfiles\config\which-key.vim

"==========================================================
" 使用者操作介面設定
"==========================================================
source C:\Users\AlanJui\vimfiles\UI.vim

" Theme Colors
if $TERM_PROGRAM == "Apple_Terminal"
    set notermguicolors

    try
        colorscheme OceanicNext
    catch
        colorscheme gruvbox
    endtry

    let g:airline_theme='oceanicnext'

else
    source C:\Users\AlanJui\vimfiles\config\color-theme-ccc.vim
endif

" Status line
" source C:\Users\AlanJui\vimfiles\config\light-line.vim
source C:\Users\AlanJui\vimfiles\config\airline-theme.vim

"==========================================================
" 其它設定
"==========================================================
source C:\Users\AlanJui\vimfiles\Misc.vim

if has("unix")
    let s:uname = system("uname -s")
    " Do Mac stuff
    if s:uname == "Darwin\n"
        source C:\Users\AlanJui\vimfiles\vimrc.osx
    endif
endif

" set exrc

" Don't convert tab to spaces
set tabstop=4
set expandtab
set list!
if has('gui_running')
    set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.
else
    set listchars=tab:>.,trail:.,extends:\#,nbsp:.
endif


set tabstop=4
set et!
set expandtab!
set noexpandtab
setlocal list
set listchars=tab:▷▷,trail:.
" Highlight tabs as errors.
" https://vi.stackexchange.com/a/9353/3168
" match Error /\t/

" To use fzf in Vim
" set rtp+=/usr/local/opt/fzf

set guifont=DroidSansM\ Nerd\ Font:h24"
