let g:browser = 'firefox '
" On OSX - let g:browser = 'open -a /Applications/Firefox.app'

" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/search/quick?query='.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap ?b :call OpenRubyDoc(expand('<cword>'))<CR>

" Open the Rails ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/search/quick?query='.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap ?r :call OpenRailsDoc(expand('<cword>'))<CR>

" Open the Rspec ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRspecDoc(keyword)
  let url = 'http://apidock.com/rspec/search/quick?query='.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap RS :call OpenRspecDoc(expand('<cword>'))<CR>

" Open the DevDocs
function! OpenRspecDoc(keyword)

 devdocs.io/#q=keyword
  let url = 'http://devdocs.io/\#q='.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap - :call OpenRspecDoc(expand('<cword>'))<CR>
