"dein Scripts-----------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"" Required:
"set runtimepath+=/home/yutoi/.vim/dein/repos/github.com/Shougo/dein.vim
"
"" Required:
"if dein#load_state('/home/yutoi/.vim/dein')
"  call dein#begin('/home/yutoi/.vim/dein')
"
"  " Let dein manage dein
"  " Required:
"  call dein#add('/home/yutoi/.vim/dein/repos/github.com/Shougo/dein.vim')
"
"  " Add or remove your plugins here:
"  call dein#add('Shougo/neosnippet.vim')
"  call dein#add('Shougo/neosnippet-snippets')
"
"  " You can specify revision/branch/tag.
"  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
"
"  call dein#add('Shougo/vimproc.vim', { 'build': 'make'})
"  call dein#add('Shougo/unite.vim')
"  " Required:
"  call dein#end()
"  call dein#save_state()
"endif
"
"" Required:
"filetype plugin indent on
"syntax enable
"
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


" setting
"�����R�[�h��UTF-8�ɐݒ�
set fenc=utf-8
" �o�b�N�A�b�v�t�@�C�������Ȃ�
set nobackup
" �X���b�v�t�@�C�������Ȃ�
set noswapfile
" �ҏW���̃t�@�C�����ύX���ꂽ�玩���œǂݒ���
set autoread
" �o�b�t�@���ҏW���ł����̑��̃t�@�C�����J����悤��
set hidden
" ���͒��̃R�}���h���X�e�[�^�X�ɕ\������
set showcmd


" �����ڌn
" �s�ԍ���\��
set number
" ���݂̍s�������\��
set cursorline
" ���݂̍s�������\���i�c�j
set cursorcolumn
" �s����1������܂ŃJ�[�\�����ړ��ł���悤��
set virtualedit=onemore
" �C���f���g�̓X�}�[�g�C���f���g
set smartindent
" �r�[�v��������
"set visualbell
" ���ʓ��͎��̑Ή����銇�ʂ�\��
set showmatch
" �X�e�[�^�X���C������ɕ\��
set laststatus=2
" �R�}���h���C���̕⊮
set wildmode=list:longest
" �܂�Ԃ����ɕ\���s�P�ʂł̈ړ��ł���悤�ɂ���
nnoremap j gj
nnoremap k gk


" Tab�n
" �s������������(�^�u���u-�v�ƕ\�������)
set list listchars=tab:\\-
" Tab�����𔼊p�X�y�[�X�ɂ���
set expandtab
" �s���ȊO��Tab�����̕\�����i�X�y�[�X�������j
set tabstop=2
" �s���ł�Tab�����̕\����
set shiftwidth=2
set softtabstop=2


" �����n
" ���������񂪏������̏ꍇ�͑啶������������ʂȂ���������
set ignorecase
" ����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set smartcase
" ������������͎��ɏ����Ώە�����Ƀq�b�g������
set incsearch
" �������ɍŌ�܂ōs������ŏ��ɖ߂�
set wrapscan
" ��������n�C���C�g�\��
set hlsearch
" ESC�A�łŃn�C���C�g����
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" ���L�[�𖳌��ɂ���
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
" O�ŋ�s��}��
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"autocmd FileType python setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
