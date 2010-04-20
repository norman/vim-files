autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

filetype plugin indent on
syntax on

set autoindent
set backspace=start,indent,eol
set cindent
set encoding=utf8
set expandtab
set fileencoding=utf8
set foldlevelstart=99
set foldmethod=indent
set list
set listchars=tab:⏤⇢
set nobackup
set nobackup
set nocompatible
set noerrorbells
set noignorecase
set noswapfile
set nowritebackup
set number
set ruler
set shiftwidth=2
set showmatch
set smarttab
set tabstop=2
set tenc=utf8
set ttyfast
set vb
set wildmode=longest,full

nmap ,t :execute 'TlistToggle '<CR>
nmap ,b :call BufferList()<CR>
nmap ,d :execute 'NERDTreeToggle ' . getcwd()<CR>
nmap <C-t> <ESC>:FufTag<CR>
nmap <C-f> <ESC>:FufFile<CR>
nmap <C-b> <ESC>:FufBuffer<CR>
nmap <C-l> <ESC>:FufLine<CR>
nmap <F5> :make<CR>

" Mimic command line editing
map! <C-K> <ESC>d$
map! <C-U> <ESC>d0
map! <C-A> <ESC>0
map! <C-E> <ESC>$i
nmap <C-K> d$
nmap <C-A> 0
nmap <C-E> $

" highlighting for the completion menu
highlight Pmenu guibg=blue guifg=white ctermbg=blue ctermfg=white
highlight PmenuSel guibg=white guifg=blue ctermbg=white ctermfg=blue


