call pathogen#infect()
filetype plugin indent on
let mapleader=","
runtime! macros/matchit.vim
syntax on

set autoindent
set background=dark
set backspace=start,indent,eol
" set colorcolumn=80
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
set mouse=a
set ttymouse=xterm2
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

" Open new splits to the bottom right
set splitbelow
set splitright

set shiftwidth=2
" Avoid seeing 'Press ENTER or type command to continue' as much as possible
set shortmess=oT
set showmatch
set smartindent
set smarttab
set tabstop=2
set tenc=utf8
set title
set vb
set wildmenu
set wildmode=longest,full

noremap / /\v
nnoremap ? ?\v

nmap <silent> <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>p :set invpaste paste?<CR>
nmap <silent> <leader>n :set invnumber number?<CR>

nmap <C-c> <ESC>:TComment<CR>
nmap <F5> :make<CR>
nmap <C-j> :tabprevious<CR>
nmap <C-k> :tabnext<CR>

let NERDTreeHijackNetrw=1

" Use Control-T instead of Control-P, I'm more used to that.
let g:ctrlp_map = '<C-t>'

" highlighting for the completion menu
highlight Pmenu guibg=blue guifg=white ctermbg=blue ctermfg=white
highlight PmenuSel guibg=white guifg=blue ctermbg=white ctermfg=blue

if has("gui_macvim")
  colorscheme koehler
  set background=dark
  set guifont=Inconsolata:h18
  set guioptions-=T
  set gcr=a:blinkwait0,a:block-cursor
endif

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

hi TabLine      ctermfg=Black  ctermbg=Gray     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Gray     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
