" General settings
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number
set cursorline
set virtualedit=onemore
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

" Indent
set smartindent
set autoindent
set list listchars=tab:\\-
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Search
set ignorecase
set smartcase
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Disable Cursor Key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" For Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Settings for Alduin(Colorscheme)
let g:alduin_Shout_Become_Ethereal = 1
colorscheme alduin
