"===================================================================
" Maintainer:
"       Alan Jui : alanjui.1960@gmail.com
" Version:
"       V 0.6.0    2020/11/24 14:52
"===================================================================

scriptencoding utf-8
set shell=$SHELL
set nocompatible
let g:mapleader = ","

au FocusGained,BufEnter * :silent! checktime
au FocusLost,WinLeave * :silent! w


"--------------------------------------------------------------
" 作業系統層級設定

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

" Python for NeoVim (PyNvim)
let g:python3_host_prog = "$HOME/.pyenv/shims/python3"
"let g:python3_host_prog = "/Users/alanjui/.pyenv/shims/python3"
" " Figure out the system Python for Neovim.
" if exists("$VIRTUAL_ENV")
"     let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
"     "let g:python3_host_prog = "$VIRTUAL_ENV/bin/python"
"     " let g:python3_host_prog = "$HOME/.pyenv/shims/python"
" else
"     let g:python3_host_prog = substitute(system("which python3"), "\n", '', 'g')
"     "let g:python3_host_prog = "$HOME/.pyenv/shims/python"
" endif

"====================================================================
" 擴充套件(Plugins)
"====================================================================
source ~/.vim/plugins.vim
source ~/.vim/config/ranger.vim
source ~/.vim/config/fzf.vim

"====================================================================
" Vim 通用設定
"====================================================================
source ~/.vim/global.vim

"===================================================================
" 程式碼版面與格式設定
"===================================================================
source ~/.vim/format.vim

"===================================================================
" COC-NVIM 配合環境
"===================================================================
source ~/.vim/coc-nvim.vim

"===================================================================
" 快速鍵設定
"===================================================================
source ~/.vim/keymap.vim

"===================================================================
" 使用者操作介面設定
"===================================================================
source ~/.vim/UI.vim

"===================================================================
" 其它設定
"===================================================================
source ~/.vim/Misc.vim

