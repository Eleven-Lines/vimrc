noremap <buffer> $ $$<Left>

" let g:tex_fast="mMrp"
let g:tex_fold_enabled=1
let g:tex_flavor = "plain"



augroup MyHilight
    autocmd!
    autocmd Colorscheme * hi link plaintexControlSequence texStatement
    autocmd Colorscheme * hi link plaintexMathFunction    texStatement
    autocmd Colorscheme * hi link plaintexMathLetter      texStatement
    autocmd Colorscheme * hi link plaintexSpecialChar     texSpecialChar
    autocmd Colorscheme * hi link plaintexTablesCommand   texDelimiter
augroup end
