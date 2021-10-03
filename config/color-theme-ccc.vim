"--------------------------------------------------------------
" 佈景、配色與字體

syntax enable
if (has("termguicolors"))
    set termguicolors
endif

try
  colorscheme OceanicNext
catch
  colorscheme gruvbox
endtry

" "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (empty($TMUX) && $TERM_PROGRAM == "Apple_Terminal" && $TERM == "xterm-256color")
"
"   " 不支援 24-bit 全彩的終端機，如：macOS Terminal.app
"   set notermguicolors
"
"   try
"     colorscheme OceanicNext
"   catch
"     colorscheme gruvbox
"   endtry
"
"   let g:airline_theme='oceanicnext'
"
" else
"   " 支援 24-bit 全彩的終端機，如：iTerm 2
"   "
"   " ======= 在 Tmux 中: =======
"   " exists("$TERM") == 1
"   " $TERM == "screen-256color"
"   " $COLORTERM='truecolor'
"   " ======= 在 Nvim 中: =======
"   " has("nvim") == 1
"   " has("termguicolors") == 1
"
"
"   syntax enable
"   let g:airline_theme='papercolor'
"
"   try
"     colorscheme oceanicnext
"     if ($TERM_PROGRAM !~ "Apple_Terminal")
"         let g:oceanic_next_terminal_bold = 1
"         let g:oceanic_next_terminal_italic = 1
"     endif
"   catch
"     colorscheme gruvbox
"   endtry
"
" endif


