set nocompatible
set nobackup

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol

colorscheme google
autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

set number
set cindent
set showmatch

set incsearch
set ignorecase

set encoding=utf8
set tenc=utf8
set fileencoding=utf8

syntax on

set foldmethod=indent
set foldlevelstart=99

set wildmode=longest,full

nmap ,d :execute 'NERDTreeToggle ' . getcwd()<CR>
nmap ,t :execute 'TlistToggle '<CR>
nmap ,b :call BufferList()<CR>

filetype plugin indent on

if executable("ack-grep")
    set grepprg=ack-grep\ -H\ --nogroup\ --nocolor
endif

augroup mkd
  autocmd BufRead *.md,*.markdown,*.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END
