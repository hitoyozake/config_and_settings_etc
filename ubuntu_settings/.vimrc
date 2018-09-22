set expandtab
"tab幅を空白4つ分に変k脳
set tabstop=4
set softtabstop=4
set shiftwidth=4
"カッコの一致を強調表示
set showmatch

"カーソル行をハイライトする
set cursorline

set title
set number "行番号
set smartindent "auto indent
set ruler
"エラービープを鳴らさない
set noerrorbells
set belloff=all
"ステータス行を表示
"0・・・非表示, 1・・・2つ以上の場合のみ表示 2・・・常に表示
set laststatus=2


"search setting*********************
"大文字小文字を無視する
set ignorecase
set smartcase
set wrapscan
"インクリメンタル検索
set incsearch
"ハイライト
set hlsearch

"color schema*********************
if has("syntax")
    :syntax on
endif
" 実はコロンは不要
try
    :colorscheme railscasts
catch /^Vim\%((\a\+)\)\=:E185/
    "do nothing
endtry
"*********************************
"rust

call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
call plug#end()
let g:rustfmt_autosave = 1
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'

set hidden
let g:racer_cmd = '$HOME/.cargo/bin/racer'
let $RUST_SRC_PATH = '$HOME/src/rust/_src/rustc-1.13.0/src'

highlight Cursor guifg=NONE guibg=Green

