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
set noignorecase
set nobackup
set nocompatible
set noerrorbells
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
nmap <C-t> :e **/

" highlighting for the completion menu
highlight Pmenu guibg=blue guifg=white ctermbg=blue ctermfg=white
highlight PmenuSel guibg=white guifg=blue ctermbg=white ctermfg=blue

augroup mkd
  autocmd BufRead *.md,*.markdown,*.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

augroup lua
  autocmd BufRead *.lua,*.rockspec nmap <F4> :!lua %<CR>
  autocmd BufRead *.lua,*.rockspec nmap <F3> :!echo;tsc `grep -ril -e 'describe\\|context(".*", function())' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'`<CR>
  autocmd BufRead *.lua,*.rockspec nmap <F2> :!echo;tsc -f `grep -ril -e 'describe\\|context(".*", function())' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'` \| less<CR>
augroup END

augroup json
  autocmd BufRead *.json  set syn=json
augroup END

augroup ruby
  autocmd BufRead *.rb,Gemfile set syn=ruby
  autocmd BufRead *.rb nmap <F3> :!echo; rake test<CR>
augroup END
