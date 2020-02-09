"vimrc v0.5
filetype plugin on

"has("vim_starting")$B$O5/F0;~$K$N$_??$rJV$9(B
if has('vim_starting')
    "$B5/F0;~$K$N$_=hM}$,9T$o$l$k(B
     
endif

set encoding=utf-8 "$B%U%!%$%kFI$_9~$_;~J8;z%3!<%I$N@_Dj(B
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set shortmess+=I
set nowritebackup "$B%U%!%$%k$r>e=q$-$9$kA0$K%P%C%/%"%C%W$r:n$k$3$H$rL58z2=(B
set nobackup        "$B%U%!%$%k$r>e=q$-$9$kA0$K%P%C%/%"%C%W$r:n$k$3$H$rL58z2=(B
set clipboard+=unnamed "$B%d%s%/$r%/%j%C%W%\!<%I$X%3%T!<(B

"####$BI=<(@_Dj(B####
syntax on "$B%3!<%I$N?'J,$1(B
colorscheme slate
set number "$B9THV9f$rI=<($9$k(B
set title "$BJT=8Cf$N%U%!%$%kL>$rI=<((B
set tabstop=4 "$B%$%s%G%s%H$r%9%Z!<%9(B4$B$DJ,$K@_Dj(B
set smartindent "$B2~9TA0$KA0$N9T$N%$%s%G%s%H$r7QB3$9$k(B
set autoindent "$B2~9T;~$KA0$N9T$N9=J8$r%A%'%C%/$7<!$N9T$N%$%s%G%s%H$rA}8:$9$k(B
set shiftwidth=4 "smartindent$B$GA}8:$9$kI}(B

"####$B%3%^%s%IJd40(B####
set wildmenu "$B%3%^%s%I%b!<%I$NJd40(B
set history=5000 "$BJ]B8$9$k%3%^%s%IMzNr$N?t(B


"####$B8!:w@_Dj(B####
set ignorecase "$BBgJ8;z!&>.J8;z$N6hJL$J$/8!:w$9$k(B
set smartcase  "$B8!:wJ8;zNs$KBgJ8;z$,4^$^$l$F$$$k>l9g$O6hJL$7$F8!:w$9$k(B
set wrapscan "$B8!:w;~$K:G8e$^$G9T$C$?$i:G=i$KLa$k(B
set hlsearch "$B8!:w7k2L$r%O%$%i%$%HI=<((B
set showmatch "$B%+%C%3F~NO$NBP1~$9$k%+%C%3$rI=<((B

"####$B%+!<%=%k0\F0(B#####
set whichwrap=b,s,h,l,<,>,[,],~ " $B%+!<%=%k$N:81&0\F0$G9TKv$+$i<!$N9T$N9TF,$X$N0\F0$,2DG=$K$J$k(B

"#### $B9T$,@^$jJV$7I=<($5$l$F$$$?>l9g!"9TC10L$G$O$J$/I=<(9TC10L$G%+!<%=%k$r0\F0$9$k(B####
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

"####$B%P%C%/%9%Z!<%9%-!<$NM-8z2=(B####
set backspace=indent,eol,start

"####enter$B$NM-8z2=(B####
nnoremap <CR> i<Return><Esc>^k

"####$BF~NOJd40(B####
inoremap { {}<left>
inoremap ( ()<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap < <><left>

"####$BF|IU$N<+F0A^F~(B
nmap ! <ESC>i<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR>

"####$B2hLLA`:n(B####
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

"####$B%U%!%$%k@_Dj(B####
set autochdir "$B<+F0$G3+$$$?%U%!%$%k$N>l=j$r%+%l%s%H%G%#%l%/%H%j$K$9$k!#(B

"####netrw$BMQ$N@_Dj(B####
let g:netrw_banner = 0 "$B>eIt$KI=<($5$l$k>pJs$rHsI=<((B
let g:netrw_liststyle = 3 "$BI=<(7A<0$r(BTreeView$B$KJQ99(B
let g:netrw_altv = 1 "$B:81&J,3d$r1&B&$K3+$/(B
let g:netrw_winsize = 50 "$B%&%#%s%I%&$r(B50%$B$NBg$-$5$G3+$/(B
autocmd FileType netrw setl bufhidden=delete

"####$B%a%b5/F0%9%/%j%W%H(B####
function! Memo()
	"####$B%a%bJ]B8MQ%U%)%k%@$N;XDj(B####
	let outputdir = 'C:\memo\'
  	let outputfile = strftime("%Y%m%d") . ".txt"

	execute "lcd " . outputdir
	
	if filereadable(outputdir . outputfile)
		echo "hello world"
	else
		execute "redir > " . outputfile
		redir END
	endif
	
	"####$B%?%V$G%a%b$r3+$/(B####
	execute "tabe " . outputdir . outputfile

endfunction	

"$B%9%/%j%W%H5/F0MQ%7%g!<%H%+%C%H(B
nnoremap <space><space> :<C-w>call Memo()<CR>

