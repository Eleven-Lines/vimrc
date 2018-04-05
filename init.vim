if &compatible
    set nocompatible
endif

set encoding=utf-8

" release autogroup in MyAutoCmd
augroup MyAutoCmd
    autocmd!
augroup END

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/rc/vimrc'

filetype on
filetype plugin indent on
syntax on

