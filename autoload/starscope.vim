" License
"
" (The MIT License)
"
" Copyright (c) 2009-2016 Bob Nadler, Jr.
"
" Permission is hereby granted, free of charge, to any person obtaining a copy of
" this software and associated documentation files (the "Software"), to deal in
" the Software without restriction, including without limitation the rights to
" use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
" of the Software, and to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

" Re-generate starscope ctag and cscope files
function starscope#Update()
    if !executable('starscope')
        echo "Cannot find starscope gem in PATH"
        return
    endif
    let cmd = "find . -name *.rb | xargs starscope -e cscope"
    silent! execute s:GetRunner() . cmd
    call s:addCscopeFile()
    redraw!
endfunction

" Returns a string indicating the runner to use for the command. Uses
" vim-dispatch if available, otherwise defaults to a plain '!'.
function s:GetRunner()
    if exists("g:loaded_dispatch")
        return "Start!"
    else
        return "!"
    endif
endfunction

" Re-connects to a 'cscope.out' file if it exists. Suppresses the 'duplicate
" connection' error if the connection has already been made.
function s:addCscopeFile()
    set nocscopeverbose
    cscope add cscope.out
    set cscopeverbose
endfunction
