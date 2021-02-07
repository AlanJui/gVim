"==============================================================
" Vim 通用設定
"==============================================================


" 與作業系統共用 Clipboard
" 欲將系統剪貼簿的內容貼入 Vim 前，需先按 <F2> 鍵。
set clipboard=unnamed

" Don't show last command
set noshowcmd

set undolevels=700
set history=1000
set timeout timeoutlen=500


"--------------------------------------------------------------
" 應用系統層級設定

" Better display for messages
set cmdheight=2

" User will have bad experience for diagnostic messages when it's default 4000
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


set nocompatible            " Disable compatibility to old-time vi
set encoding=UTF-8

set backspace=2
"set backspace=indent,start,eol

set mouse=a

" if hidden is not set, TextEdit of coc-nvim might fail.
set hidden

"set noshowmode
set showmode
set showmatch               " Show matching brackets.
set nolazyredraw

set showcmd


" 文字搜尋：Serach configuration
set ignorecase              " 搜尋時怱略英文字母的大小寫
set smartcase               " turn on smartcase
set incsearch
set hlsearch                " highlight search results


" 倒刪鍵不刪 EOL
" 標示多餘空白【務必放在 ColorScheme 設定之前】
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/


"--------------------------------------------------------------
" 檔案作業


" 停用 backup 與 swap 功能
set nobackup
set nowritebackup
set noswapfile


"==============================================================
" 操作介面
"==============================================================


" 檔案內容，以「紀錄檔」配色顯示
nmap <Leader>l :set filetype=journal<CR>


" 視窗管理
set splitbelow      " 水平切割時，在下產生新視窗
set splitright      " 垂直切割時，在右產生新視窗
set scrolloff=3


" indents
filetype indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
