syntax enable
set tabstop=4           " タブが対応する空白の数
set shiftwidth=4        " 自動インデントの空白数
set expandtab           " タブの代わりに空白を挿入
"set virtualedit=all     " カーソルを文字が存在しない部分でも動けるようにする
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする
set ignorecase          " 大文字/小文字を区別しない
set smartcase           " 大文字を含む検索では大文字/小文字を区別
set incsearch           " インクリメンタルサーチを行う
set nowrapscan          " 検索を先頭にループさせない
set hlsearch            " 検索でマッチした文字列をハイライト
set nowrap              " ウィンドウ幅より長い行を折り返さない
set textwidth=0         " 自動的に改行が入るのを無効化
"set colorcolumn=80      " その代わり80文字目にラインを入れる
set nobackup            " バックアップを作らない
set noswapfile          " スワップファイルを作らない
set autoread            " 他でファイルが更新されたら自動で読みなおす
set smartindent         " 高度な自動インデントを行う
set ambiwidth=double    " 文脈依存の文字幅
set laststatus=2        " 常にステータスラインを表示
set statusline=%F%r%=%l,%c " ステータスラインの左に絶対パス、右に行数と列数を表示

" バックスペースの挙動
"  eol    行の連結を可能に
"  start  挿入モードで自由に文字削除
"  indent オートインデントのインデントも削除可能に
set backspace=eol,start,indent

" 表示行単位で行移動する
nnoremap <silent> j gj
nnoremap <silent> k gk

" F9で行折り返しのOF/OFFを切り替える
map <F9> :set wrap!<cr>

" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

" ;でコマンド入力
nnoremap ; :

" Escの2回押しで検索結果のハイライトを消す
nmap <ESC><ESC> ;nohlsearch<CR><ESC>

au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4
