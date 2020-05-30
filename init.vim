
"文字コードをutf-8に設定
set encoding=utf8

"改行した際にカレント行のインデントをキープする
set autoindent

"タブ幅を2文字にする
set tabstop=4

"シフト幅を2文字に設定する
set shiftwidth=4

"シフト時に現在のスペースをshiftwidth倍にする
set shiftround

"新しいウィンドウを右に開く
set splitright

"ヤンクの際にクリップボードと共有する
set clipboard=unnamed

"バックスペースを空白　行末　行頭でも使えるようにする
set backspace=indent,eol,start

"スワップファイル(.swap)の出力を無効にする
set noswapfile

"カーソル行のハイライト
set cursorline

"python環境設定
let g:python3_host_prog = 'C:\Users\Owner\AppData\Local\Programs\Python\Python37\python'
let g:python_host_prog = $PYENV_ROOT.'\pyenv-win\versions\2.7.17\python'

"現在の行からの相対位置番号を表示
set relativenumber

"行末の1文字先までのカーソルを移動できるように
set virtualedit=onemore

"タブの際に可視化
set list listchars=tab:▶:- 

"modeの表示
set showmode

"カーソルカラムを表示する
set cursorcolumn

"" キーマップの設定
"リーダーキーを設定する
let mapleader = "\<SPACE>"

" +ファイルフォーマットの変更
"ESCキー2度押しでハイライトの切り替え
nnoremap <silent><ESC><ESC> :<C-u>set nohlsearch!<CR>

" +コマンドのユーザ定義
"「<Space>+<o>」で現在のカーソルの次の行に空白を一行導入する
nnoremap <Leader>o :<C-u>call append(expand('.'), '')<CR>

"「<Space>+<n>」で新規ファイル作成
nnoremap <Leader>n :setlocal number! number?<CR>

" 「<Space>+<8>」で文字コードをUTF-8に設定します。
nnoremap <Leader>8 :setlocal fenc=utf-8<CR>

" 「<space>+<c>」で文字コードをSHIFT-JISに設定します。
nnoremap <Leader>c :setlocal fenc=cp932<CR>

" 「<space>+<c>」で文字コードをSHIFT-JISに設定します。
nnoremap <Leader>m :setlocal fenc=MS932<CR>

"Space + u で　init.vimを開く
nnoremap <Leader>. :new $MYVIMRC<CR>

"Space + p で dein.tomlを開く
nnoremap <Leader>d :new $HOME\.config\nvim\dein.toml<CR>

"<Space><Space>でビジュアルモードに変換
nnoremap <Leader><Leader>: v<CR>

"<Space>qで閉じる
nnoremap <Leader>q :q<CR>

"<Space>qで閉じる
nnoremap <Leader>Q :q!<CR>

"<Space>w で書き込み
nnoremap <Leader>w :w<CR>

"jj を ESCキー
inoremap <silent> jj <ESC>:w<CR>

"検索関係の設定
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

"小文字時は大文字小文字区別なし
set ignorecase
set smartcase
set wrapscan
set incsearch

"置換処理
set inccommand=split

"複数行の貼り付け
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"Ctrl + jとCtrl + kで段落の前後に移動
nnoremap <C-j> }
nnoremap <C-k> {

"deinの設定
if &compatible
  set nocompatible
endif

set runtimepath+=~/vimfiles/bundles/repos/github.com/Shougo/dein.vim
if dein#load_state('~/vimfiles/bundles')
  call dein#begin('~/vimfiles/bundles')
  call dein#load_toml('~/.config/nvim/dein.toml',{'lazy':0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})
 " call map(dein#check_clean(), "delete(v:val, 'rf')")
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
syntax enable
