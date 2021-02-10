"============================================================
" Vim 擴充套件設定檔
"============================================================


" check whether vim-plug is installed and install it if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif


"============================================================
" 擴充套件安裝
"============================================================


call plug#begin('~/.vim/plugged')

"------------------------------------------------------------
" 程式編輯

" Auto-complete (Intellisense Engine)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Snippets support
Plug 'honza/vim-snippets'
Plug 'https://github.com/andys8/vscode-jest-snippets.git'

" Auto-pairs
Plug 'jiangmiao/auto-pairs/'
Plug 'tpope/vim-surround'

" Multiple cursor editting
Plug 'terryma/vim-multiple-cursors'

" Comment code
Plug 'scrooloose/nerdcommenter'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" The plug-in visualizes undo history and makes it easier to browse and switch between different undo branches.
Plug 'mbbill/undotree'

"------------------------------------------------------------
" 程式排版 & 視覺導引

" Code folding
Plug 'tmhedberg/SimpylFold'

" Displaying thin vertical lines
Plug 'Yggdroot/indentLine'

" === Syntax Highlighting === "

" Syntax highlighting for nginx
" Plug 'chr4/nginx.vim'

" Syntax for json with comments
" Plug 'neoclide/jsonc.vim'

" Syntax highlighting for javascript libraries
" Plug 'othree/javascript-libraries-syntax.vim'


"------------------------------------------------------------
" 檔案操作

" Denite - Fuzzy finding, buffer management
" Plug 'Shougo/denite.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'chemzqm/denite-git'
" Plug 'neoclide/coc-denite'

" File manage and exploration
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'


"------------------------------------------------------------
" 使用者操作介面

Plug 'liuchengxu/vim-which-key'

" Float Terminal
Plug 'voldikss/vim-floaterm'

" Swap windows
Plug 'wesQ3/vim-windowswap'

" Color Scheme: Support True Color
Plug 'lifepillar/vim-solarized8'
" Plug 'mhartington/oceanic-next'
" Plug 'ayu-theme/ayu-vim'
" Plug 'drewtempelmeyer/palenight.vim'

" Plug 'morhetz/gruvbox'
" Plug 'joshdick/onedark.vim'
" Plug 'itchyny/lightline.vim'
" Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
" Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }

" Add file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline
Plug 'ryanoasis/vim-devicons'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"------------------------------------------------------------
" 其它

" PlantUML
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" Markdown Preview
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


