augroup filetypedetect

  au BufNewFile,BufRead *.json  setf json

  au BufNewFile,BufRead *.md,*.markdown,*.mkd  set filetype=mkd ai formatoptions=tcroqn2 comments=n:>

  au BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,*.ru,*.irbrc,Capfile,Gemfile,[rR]akefile,*.builder,*.rxml,*.rjs setf ruby
  au BufNewFile,BufRead *.erb,*.rhtml setf eruby
  au Filetype ruby nmap <F3> :!echo; rake test<CR>

  au BufNewFile,BufRead *.lua,*rockspec setf lua
  au Filetype lua nmap <F2> :!echo;tsc -f `grep -ril -e 'describe\\|context(".*", function()' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'` \| less<CR>
  au Filetype lua nmap <F3> :!echo;tsc `grep -ril -e 'describe\\|context(".*", function()' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'`<CR>
  au Filetype lua nmap <F4> :!lua %<CR>

augroup END
