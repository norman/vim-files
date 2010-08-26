autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

filetype plugin indent on
filetype indent on
syntax on
let mapleader=","

set autoindent
set background=dark
set backspace=start,indent,eol
set encoding=utf8
set expandtab
set fileencoding=utf8
set foldlevelstart=99
set foldmethod=manual
" Don't unload when switching buffers. This preserves undo history
" while changing buffers.
set hidden
set history=1000
set incsearch
set listchars=tab:>-,trail:·,eol:$
set nobackup
set nocompatible
set noerrorbells
set noignorecase
set noswapfile
set nowritebackup
set number
set ruler
" Show more context around the cursor
set scrolloff=3
set shiftwidth=2
" Avoid seeing 'Press ENTER or type command to continue' as much as possible
set shortmess=o
set showmatch
set smartindent
set smarttab
set tabstop=2
set tenc=utf8
set title
" set ttyfast
set vb
set wildmenu
set wildmode=longest,full

noremap / /\v
nnoremap ? ?\v

nmap ,d :execute 'NERDTreeToggle ' . getcwd()<CR>
" Toggle viewing whitespace chars
nmap <silent> <leader>s :set nolist!<CR>
nmap <C-p> <ESC>:set invpaste paste?<CR>
nmap <C-n> <ESC>:set invnumber number?<CR>
nmap <C-c> <ESC>:TComment<CR>
nmap <F5> :make<CR>
nmap <C-t> :CommandT<CR>

let g:CommandTCancelMap='<C-c>'

" highlighting for the completion menu
highlight Pmenu guibg=blue guifg=white ctermbg=blue ctermfg=white
highlight PmenuSel guibg=white guifg=blue ctermbg=white ctermfg=blue

colorscheme vividchalk
runtime macros/matchit.vim

if has("gui_macvim")
  colorscheme vividchalk
  set background=dark
  set guifont=Inconsolata:h15
  set guioptions-=T
  set gcr=a:blinkwait0,a:block-cursor
endif
