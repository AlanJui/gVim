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
source ~/.vim/plugins.vim

" 擴充套件設定（Configuration of Plugins)
source ~/.vim/config/ranger.vim
source ~/.vim/config/fzf.vim
source ~/.vim/config/surround.vim
source ~/.vim/config/auto-pairs.vim
source ~/.vim/config/multiple-cursors.vim
source ~/.vim/config/simply-fold.vim
source ~/.vim/config/nerd-commenter.vim
source ~/.vim/config/change-tag-name.vim
source ~/.vim/config/live-server.vim
source ~/.vim/config/markdown-preview.vim
source ~/.vim/config/window-swap.vim
source ~/.vim/config/float-term.vim
source ~/.vim/config/echodoc.vim
" source ~/.vim/config/plant-uml.vim
source ~/.vim/config/plantuml-previewer.vim
source ~/.vim/config/find-and-replace.vim

"===========================================================
" Vim 通用設定
"===========================================================
source ~/.vim/global.vim

"==========================================================
" 程式碼版面與格式設定
"==========================================================
source ~/.vim/format.vim

"==========================================================
" COC-NVIM 配合環境
"==========================================================
source ~/.vim/coc-nvim.vim
source ~/.vim/config/coc-explorer.vim

"==========================================================
" 快速鍵設定
"==========================================================
source ~/.vim/keymap.vim

source ~/.vim/config/which-key.vim

"==========================================================
" 使用者操作介面設定
"==========================================================
source ~/.vim/UI.vim

" source ~/.vim/config/color-theme-ccc.vim
source ~/.vim/config/color-theme-solarized.vim

" Status line
source ~/.vim/config/airline-theme.vim
" source ~/.vim/config/light-line.vim

"==========================================================
" 其它設定
"==========================================================
source ~/.vim/Misc.vim

if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    source ~/.vim/vimrc.osx
  endif
endif


set exrc
