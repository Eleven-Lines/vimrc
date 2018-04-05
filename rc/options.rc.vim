" use fish.
set shell=fish

"View
set list
set number
set ruler
set cursorline
set showtabline=2 " Always show tabline
set laststatus=2  " Always show statusline
" set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set listchars=tab:»-,trail:-,extends:»,precedes:«,eol:↲
set cole=0
set breakindent

"Edit
set virtualedit=block
" set showmatch
set matchtime=3
set matchpairs& matchpairs+=<:>

" Change Cursor
let &t_SI = "\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Mouse
set mouse=a

" Window
set noequalalways

"Search
set smartcase
set ignorecase
set incsearch
set hlsearch

"Disable backups
set nowritebackup
set nobackup
set noswapfile

"Tab char
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

"Auto Indent
set cindent
set cinoptions+=:0,g0,>s,ls,NN-s,
set cinwords=if,else,for,while,try,except,class,brake,case,struct

"-----hilight-----

"Colorscheme
set t_Co=256
set background=dark
set termguicolors
colorscheme sidonia

"Folding
set foldmethod=marker
set foldcolumn=4
set fillchars=vert:\| 
set foldtext=MyFoldText()

"function! MyFoldText(){{{
function! MyFoldText()
    let line = getline(v:foldstart)
    let sub = substitute(line, '/\*\|\*/\|{{{\d\=', ' ', 'g')
    let offset = 8
    let lines = v:foldend-v:foldstart + 1
    let rightstr = '[ ' . lines . ' lines ]'
    return sub . repeat(' ', winwidth(0)-strlen(sub.rightstr)-offset) . rightstr
endfunction
"}}}}}} 
let g:vimsyn_folding = 'afP'

" Hilight cursor when IM is enabled
highlight CursorIM guibg=#c2c98f guifg=NONE

" Paste mode
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function! XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif
