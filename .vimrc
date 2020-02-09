"vimrc v0.5
filetype plugin on

"has("vim_starting")は起動時にのみ真を返す
if has('vim_starting')
    "起動時にのみ処理が行われる
     
endif

set encoding=utf-8 "ファイル読み込み時文字コードの設定
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set shortmess+=I
set nowritebackup "ファイルを上書きする前にバックアップを作ることを無効化
set nobackup        "ファイルを上書きする前にバックアップを作ることを無効化
set clipboard+=unnamed "ヤンクをクリップボードへコピー

"####表示設定####
syntax on "コードの色分け
colorscheme slate
set number "行番号を表示する
set title "編集中のファイル名を表示
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "改行前に前の行のインデントを継続する
set autoindent "改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=4 "smartindentで増減する幅

"####コマンド補完####
set wildmenu "コマンドモードの補完
set history=5000 "保存するコマンド履歴の数


"####検索設定####
set ignorecase "大文字・小文字の区別なく検索する
set smartcase  "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索結果をハイライト表示
set showmatch "カッコ入力の対応するカッコを表示

"####カーソル移動#####
set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる

"#### 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する####
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

"####バックスペースキーの有効化####
set backspace=indent,eol,start

"####enterの有効化####
nnoremap <CR> i<Return><Esc>^k

"####入力補完####
inoremap { {}<left>
inoremap ( ()<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap < <><left>

"####日付の自動挿入
nmap ! <ESC>i<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR>

"####画面操作####
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

"####ファイル設定####
set autochdir "自動で開いたファイルの場所をカレントディレクトリにする。

"####netrw用の設定####
let g:netrw_banner = 0 "上部に表示される情報を非表示
let g:netrw_liststyle = 3 "表示形式をTreeViewに変更
let g:netrw_altv = 1 "左右分割を右側に開く
let g:netrw_winsize = 50 "ウィンドウを50%の大きさで開く
autocmd FileType netrw setl bufhidden=delete

"####メモ起動スクリプト####
function! Memo()
	"####メモ保存用フォルダの指定####
	let outputdir = 'C:\memo\'
  	let outputfile = strftime("%Y%m%d") . ".txt"

	execute "lcd " . outputdir
	
	if filereadable(outputdir . outputfile)
		echo "hello world"
	else
		execute "redir > " . outputfile
		redir END
	endif
	
	"####タブでメモを開く####
	execute "tabe " . outputdir . outputfile

endfunction	

"スクリプト起動用ショートカット
nnoremap <space><space> :<C-w>call Memo()<CR>

