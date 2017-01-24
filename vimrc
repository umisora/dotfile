"--------------------
" Plugin Install
"--------------------
if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

"Install Plugins
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',
        \ {'dir': '~/.vim/plugged/vim-plug/autoload'}
  "Thema
  Plug 'w0ng/vim-hybrid'
  "Markdown
  Plug 'plasticboy/vim-markdown'
  Plug 'kannokanno/previm'
  Plug 'tyru/open-browser.vim'
call plug#end()

"--------------------
" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent 
"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/.vim/backup
"クリップボードをWindowsと連携する
set clipboard=unnamed
"vi互換をオフする
set nocompatible
"スワップファイル用のディレクトリを指定する
set directory=$HOME/.vim/backup
"Undoファイル用のディレクトリを指定する
set undodir=$HOME/.vim/undo
"タブの代わりに空白文字を指定する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden
"インクリメンタルサーチを行う
set incsearch
"行番号を表示する
set number
"閉括弧が入力された時、対応する括弧を強調する
set showmatch
"新しい行を作った時に高度な自動インデントを行う
set smarttab
"自動で挿入されるインデントのスペース幅
set shiftwidth=2
"tab キーを押した時に挿入されるスペース量
set softtabstop=2
" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh
" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

"--------------------
" markdown
"--------------------
" 拡張子に合わせてfiletypeを変更する
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
" Need: kannokanno/previm
nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
" 自動で折りたたまないようにする
let g:vim_markdown_folding_disabled=1


