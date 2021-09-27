"設定ファイル


"文字コードをutf-8にする
set encoding=utf8

"タブ幅を2文字にする
set tabstop=4

"ヒープ音無くす
set vb t_vb=

"行番号を表示
set number

"キーマッピング関係

"リーダーキーの設定
let mapleader = "\<SPACE>"

"jjをESCキー
inoremap <silent> jj <ESC><CR>

"SPACE + qで閉じる
nnoremap <Leader>q :q<CR>

"SPACE + wで閉じる
nnoremap <Leader>w :w<CR>

"SPACE + oで一行追加
nnoremap <Leader>o :<C-u>call append(expand('.'), '')<CR>

