augroup MyFileTypes
    autocmd!
augroup END

augroup MyFileTypes

" md as markdown, instead of modula2
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown

" plot as gnuplot
autocmd BufNewFile,BufRead *.plot setf gnuplot

" tex as plaintex
autocmd BufNewFile,BufRead *.tex setf plaintex

" toml
autocmd BufNewFile,BufRead *.toml setlocal filetype=toml

" vue
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue

augroup END
