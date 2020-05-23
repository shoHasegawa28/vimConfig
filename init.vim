
"文字コードをutf-8に設定
set encoding=utf8

"改行した際にカレント行のインデントをキープする
set autoindent

"タブ幅を2文字にする
set tabstop=2

"シフト幅を2文字に設定する
set shiftwidth=2

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

"「<Space>+<d>」でdosに変更する
nnoremap <Leader>d :setlocal fileformat=dos<CR>

"「<Space>+<m>」でmacに変更する
nnoremap <Leader>m :setlocal fileformat=mac<CR>

"「<Space>+<u>」でunixに変更する
nnoremap <Leader>u :setlocal fileformat=unix<CR>

" +コマンドのユーザ定義
"「<Space>+<o>」で現在のカーソルの次の行に空白を一行導入する
nnoremap <Leader>o :<C-u>call append(expand('.'), '')<CR>

"「<Space>+<n>」で新規ファイル作成
nnoremap <Leader>n :setlocal number! number?<CR>

" 「<Space>+<8>」で文字コードをUTF-8に設定します。
nnoremap <Leader>8 :setlocal fenc=utf-8<CR>

" 「<space>+<c>」で文字コードをSHIFT-JISに設定します。
nnoremap <Leader>c :setlocal fenc=cp932<CR>

"init.vim呼び出し
cnoremap init: <C-u>edit $MYVIMRC<CR>

"init.vim呼び込む
noremap <Leader>s:source $MYVIMRC<CR>

"jj を ESCキー
inoremap <silent> jj <ESC>:w<CR>


"deinの設定
if &compatible
  set nocompatible
endif

set runtimepath+=~/vimfiles/bundles/repos/github.com/Shougo/dein.vim
if dein#load_state('~/vimfiles/bundles')
  call dein#begin('~/vimfiles/bundles')
  call dein#load_toml('~/.config/nvim/dein.toml',{'lazy':0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
syntax enable
