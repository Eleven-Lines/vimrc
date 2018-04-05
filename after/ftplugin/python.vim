setlocal autoindent
setlocal smartindent
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class 
setlocal tabstop=8
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

if version < 600
    syntax clear
elseif exists('b:current_after_syntax')
    finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

syn match pythonOperator "\(+\|=\|-\|\^\|\*\)"
syn match pythonDelimiter "\(,\|\.\|:\)"
syn keyword pythonSpecialWord self
syn keyword pythonSpecialWord cls

hi link pythonSpecialWord    Special
hi link pythonDelimiter      Special

let b:current_after_syntax = 'python'

let &cpo = s:cpo_save
unlet s:cpo_save
