"--------------------------------------------------------------
" UML :  :!makeprg %
autocmd FileType plantuml setlocal shiftwidth=2 tabstop=2 softtabstop=2
let g:plantuml_executable_script = 'makeprg'
let g:plantuml_set_makeprg = 1

" autocmd FileType plantuml nnoremap <buffer> <Leader>b :!java -jar ~/.vim/autoload/plantuml.jar -tpng -o %:p:h %<cr>



