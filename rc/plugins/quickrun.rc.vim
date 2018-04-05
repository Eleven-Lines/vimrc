nnoremap <Plug>q :QuickRun<CR>
" http://d.hatena.ne.jp/osyo-manga/20120919/1348054752
" 成功した場合はバッファに出力し、失敗した場合は quickfix へと出力
" バッファを水平分割して８行で開く
" 非同期実行
let g:quickrun_config = {
            \   "_" : {
            \       'outputter' : 'error',
            \       'outputter/error/success' : 'buffer',
            \       'outputter/error/error'   : 'quickfix',
            \       'outputter/buffer/split'  : ':rightbelow 8sp',
            \       'outputter/buffer/close_on_empty' : 1,
            \       "runner" : "vimproc",
            \       "runner/vimproc/updatetime" : 40,
            \   }
            \}
let g:quickrun_config.cpp = {
            \   'command': 'g++',
            \   'cmdopt': '-std=c++14'
            \}
if executable('open')
    let g:quickrun_config['html'] = { 
                \    'command' : 'open', 
                \}
endif
if executable('mkdpreview')
    let g:quickrun_config['markdown'] = {
                \   'command' : 'mkdpreview',
                \   'cmdopt' : '-s -p',
                \   'exec': '%c %o %s',
                \}
    let g:quickrun_config['markdown/update'] = {
                \   'command' : 'mkdpreview',
                \   'cmdopt' : '-p -u',
                \   'exec': '%c %o %s',
                \}
else
    let g:quickrun_config['markdown'] = {
                \   'outputter': 'browser',
                \}
endif
let g:quickrun_config['python'] = {
            \    'command' : 'python3'
            \}
let g:quickrun_config['python3'] = {
            \    'command' : 'python3'
            \}
let g:quickrun_config['python2'] = {
            \    'command' : 'python2'
            \}
let g:quickrun_config['haskell'] = {
            \    'exec' : 'stack runghc %s'
            \}
let g:quickrun_config['gnuplot'] = {
            \ 'command' : 'gnuplot',
            \ 'exec' : ['%c %s', 'open %s:r\.pdf'],
            \}
let g:quickrun_config['tex'] = {
            \ 'command' : 'latexmk',
            \ 'outputter' : 'error',
            \ 'outputter/error/success' : 'null',
            \ 'outputter/error/error' : 'quickfix',
            \ 'exec' : ['cd %{expand("%:p:h") && %c %s && open %s:r\.pdf'],
            \}
let g:quickrun_config['swift'] = {
            \ 'command': 'xcrun',
            \ 'cmdopt': 'swift',
            \ 'exec': '%c %o %s',
            \}


" <C-c> で実行を強制終了させる
" quickrun.vim が実行していない場合には <C-c> を呼び出す
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
