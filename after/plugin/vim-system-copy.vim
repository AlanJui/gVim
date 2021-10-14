" system-copy use default copy and paste command based on your OS, but you can
" override either of these commands if you have more specific needs.
"
" Clipbard Utilities
" OSX: pbcopy, pbpaste
" Linux: xsel on X11
" Windows: clip and paste
"

" To declare custom copy command use following example:
let g:system_copy#copy_command='xclip -sel clipboard'

" And to declare custom paste command use:
let g:system_copy#paste_command='xclip -sel clipboard -o'

" By default system_copy prints a message each time you execute the copy- or
" paste- or paste-operation. If you want to suppress it use:
" let g:system_copy_silent = 1
