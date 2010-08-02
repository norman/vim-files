colorscheme vividchalk
set background=dark
set guifont=Inconsolata:h15
set guioptions-=T
set gcr=a:blinkwait0,a:block-cursor
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <C-t> <Plug>PeepOpen
end
