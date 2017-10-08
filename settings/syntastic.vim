"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
let g:syntastic_always_populate_loc_list = 1
"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}

" Default to eslint. If you need jshint, you can override this in
" ~/.vimrc.after
let g:syntastic_javascript_checkers = ['eslint']

"""""""""""""""""""""""""""""""""""""
" golang
"""""""""""""""""""""""""""""""""""""
let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_fmt_command = "goimports"

"""""""""""""""""""""""""""""""""""""
" ruby
"""""""""""""""""""""""""""""""""""""
" I have no idea why this is not working, as it used to
" be a part of syntastic code but was apparently removed
" This will make syntastic find the correct ruby specified by mri
function! s:FindRubyExec()
    if executable("rvm")
        return system("rvm tools identifier")
    endif

    return "ruby"
endfunction

if !exists("g:syntastic_ruby_exec")
    let g:syntastic_ruby_exec = s:FindRubyExec()
endif

"""""""""""""""""""""""""""""""""""""
" error navigator
"""""""""""""""""""""""""""""""""""""
function! <SID>LocationPrevious()
  try
    lprev
  catch /^Vim\%((\a\+)\)\=:E553/
    llast
  endtry
endfunction

function! <SID>LocationNext()
  try
    lnext
  catch /^Vim\%((\a\+)\)\=:E553/
    lfirst
  endtry
endfunction

nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> <leader>n  <Plug>LocationPrevious
nmap <silent> <leader>m  <Plug>LocationNext
