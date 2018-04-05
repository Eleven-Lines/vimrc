"Prefix
noremap [wt] <nop>
let mapleader = ","

" Editor
inoremap <silent> jj <Esc>
nnoremap <Esc><Esc> :noh<CR>

" change indent in insert mode
inoremap <silent> J> <Esc>>>$a
inoremap <silent> J< <Esc><<^i

nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" ファイル移動
nnoremap <silent> gp :bprevious<CR>
nnoremap <silent> gn :bnext<CR>

" 表示行移動
nnoremap j gj
nnoremap k gk
" 円記号対策
inoremap ¥ \

" 検索後のジャンプをいい感じに
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" q:, q?, q/を無効化
nnoremap q: <Nop>
nnoremap q? <Nop>
nnoremap q/ <Nop>

" IM用の設定
inoremap <silent> っｊ <Esc><Esc>

" Window
noremap [window] <Nop>
map <Space> [window]
map [window]n :split<CR>
map [window]v :vsplit<CR>
map [window]c <C-W>c
map [window]<C-c> :close!<CR> 

" Tabpage
map <Space>t [tab]
map [tab]n :tabe<CR>
map [tab]c :tabclose<CR>
map [tab]<C-C> :tabclose!<CR>

"[tab]NでN番目のタブ
for n in range(1, 9)
    execute 'nnoremap <silent> [tab]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

nnoremap <Leader>t :topleft 5split<CR>:term<CR>
nmap <Leader>c <Plug>(caw:zeropos:toggle)
vmap <Leader>c <Plug>(caw:zeropos:toggle)
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader>q :QuickRun<CR>
vnoremap <Leader>q :QuickRun<CR>
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
nnoremap <Leader>w :belowright 40vsplit<CR>:TweetVimHomeTimeline<CR>
nnoremap <Leader>ws :TweetVimSay<CR>
