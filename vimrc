colorscheme vividchalk
filetype indent on
filetype plugin indent on
let mapleader=","
runtime macros/matchit.vim
syntax on

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
  colorscheme vividchalk
  set background=dark
  set guifont=Inconsolata:h15
  set guioptions-=T
  set gcr=a:blinkwait0,a:block-cursor
endif

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

augroup filetypedetect
  " JSON
  au BufNewFile,BufRead *.json  setf json
  " Ruby
  au BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,*.ru,*.irbrc,Capfile,Gemfile,[rR]akefile,*.builder,*.rxml,*.rjs setf ruby
  au BufNewFile,BufRead *.erb,*.rhtml setf eruby
  au Filetype ruby nmap <F3> :!echo; rake<CR>
  au Filetype ruby nmap <F4> :!ruby %<CR>
  au Filetype ruby set makeprg=ruby\ -c\ %
  au Filetype ruby set errorformat=
      \%+E%f:%l:\ parse\ error,
      \%W%f:%l:\ warning:\ %m,
      \%E%f:%l:in\ %*[^:]:\ %m,
      \%E%f:%l:\ %m,
      \%-C%\tfrom\ %f:%l:in\ %.%#,
      \%-Z%\tfrom\ %f:%l,
      \%-Z%p^,
      \%-G%.%#
  " Lua
  au BufNewFile,BufRead *.lua,*rockspec set filetype=lua makeprg=luac\ -p\ % errorformat=luac\:\ %f:%l:\ %m
  au Filetype lua nmap <F2> :!echo;tsc -f `grep -ril -e 'describe\\|context(".*", function()' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'` \| less<CR>
  au Filetype lua nmap <F3> :!echo;tsc `grep -ril -e 'describe\\|context(".*", function()' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'`<CR>
  au Filetype lua nmap <F4> :!lua %<CR>
  au Filetype lua nmap <F6> :!shake %<CR>
  " HTML
  au BufNewFile,BufRead *.html set filetype=html
  au Filetype html nmap <F4> :!open -a 'Google Chrome' %<CR>
augroup END
