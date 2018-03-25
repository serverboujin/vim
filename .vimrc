" General settings
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,sjis,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number
set cursorline
set virtualedit=onemore
set showmatch
source $VIMRUNTIME/macros/matchit.vim
set laststatus=2
set wildmenu
set backspace=eol,indent,start
set shortmess+=I
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap <Space>v :vs<CR>:<C-u>VimShell<CR>

" Indent
set smartindent
set autoindent
set list listchars=tab:\\-
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Paste without Indent
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"
  function XTermPasteBegin(ret)
    set paste
    eturn a:ret
  endfunction
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" Search
set ignorecase
set smartcase
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Cursor
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
set whichwrap=b,s,h,l,<,>,[,],~

" For Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Settings for Alduin(Colorscheme)
let g:alduin_Shout_Become_Ethereal = 1
colorscheme alduin
"
" dein
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/dein.vim
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim',{'build':'make'})
call dein#add('Shougo/vimshell.vim')
call dein#add('Yggdroot/indentLine')
" dein remove plugin
"call map(dein#check_clean(),"delete(v:val,'rf')")
"call dein#recache_runtimepath()

" If you use dein.vim, syntax will be off.
" To enble syntax on, you need this setting.
syntax on

" Plugin settings
" indentLine
let g:indentLine_enbled = 0
