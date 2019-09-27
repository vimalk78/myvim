
" smitajit bufutils.vim
"map qp :BClosePreviews<cr>
"map qa :BCloseAll<cr>
"map ql :BCloseLeft<cr>
"map qr :BCloseRight<cr>
"map qo :BCloseOther<cr>
"map qq :BCloseThis<cr>

" Vim Go
let g:go_term_mode = "split"

"set tags+=/usr/local/go/src/tags
"set tags+=/home/vimal/gowork/src/github.com/coreos/etcd/gotags
"set tags+=/home/vimal/gowork/src/github.com/coreos/etcd/cgotags

set nohlsearch

" Disable parentheses matching depends on system. This way we should address all cases (?)
set noshowmatch
" NoMatchParen " This doesnt work as it belongs to a plugin, which is only loaded _after_ all files are.
" Trying disable MatchParen after loading all plugins
"
function! g:FuckThatMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call FuckThatMatchParen()
augroup END


" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk


map <F7> :tselect 

" vim-codefmt config
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  "autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

set novisualbell
set guicursor=

" Bufutils
map qp :BClosePreviews<cr>
map qa :BCloseAll<cr>
map ql :BCloseLeft<cr>
map qr :BCloseRight<cr>
map qo :BCloseOther<cr>
map qq :BCloseThis<cr>
