colorscheme solarized
filetype plugin indent on
let mapleader=","
runtime macros/matchit.vim
syntax on

set autoindent
set background=light
set backspace=start,indent,eol
set colorcolumn=80
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
" set mouse=a
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

nmap <silent> <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nmap <silent> <leader>t :TlistToggle<CR>
" Toggle viewing whitespace chars
nmap <silent> <leader>s :set nolist!<CR>
nmap <C-p> <ESC>:set invpaste paste?<CR>
nmap <C-n> <ESC>:set invnumber number?<CR>
nmap <C-c> <ESC>:TComment<CR>
nmap <F5> :make<CR>
nmap <C-t> :e **/

" highlighting for the completion menu
highlight Pmenu guibg=blue guifg=white ctermbg=blue ctermfg=white
highlight PmenuSel guibg=white guifg=blue ctermbg=white ctermfg=blue

if has("gui_macvim")
  colorscheme solarized
  set background=light
  set guifont=Inconsolata:h18
  set guioptions-=T
  set gcr=a:blinkwait0,a:block-cursor
endif

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
