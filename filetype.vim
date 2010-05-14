augroup filetypedetect

  au BufNewFile,BufRead *.json  setf json

  au BufNewFile,BufRead *.md,*.markdown,*.mkd  set filetype=mkd ai formatoptions=tcroqn2 comments=n:>

  au BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,*.ru,*.irbrc,Capfile,Gemfile,[rR]akefile,*.builder,*.rxml,*.rjs setf ruby
  au BufNewFile,BufRead *.erb,*.rhtml setf eruby
  au Filetype ruby nmap <F3> :!echo; rake test<CR>
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


  au BufNewFile,BufRead *.lua,*rockspec set filetype=lua makeprg=luac\ -p\ % errorformat=luac\:\ %f:%l:\ %m
  au Filetype lua nmap <F2> :!echo;tsc -f `grep -ril -e 'describe\\|context(".*", function()' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'` \| less<CR>
  au Filetype lua nmap <F3> :!echo;tsc `grep -ril -e 'describe\\|context(".*", function()' * \| grep -e '.*_spec\\|_test.*' \| grep -e '\\.lua$'`<CR>
  au Filetype lua nmap <F4> :!lua %<CR>

  au BufNewFile,BufRead *.html set filetype=html
  au Filetype html nmap <F4> :!open -a Safari %<CR>

augroup END
