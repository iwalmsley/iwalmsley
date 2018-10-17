set ts=2 sw=2
call plug#begin()
"ga
Plug 'junegunn/vim-easy-align'
"autocomplete
Plug 'Shougo/neocomplete.vim'
"better making
Plug 'tpope/vim-dispatch'
"tab...
Plug 'ervandew/supertab'
"snippets of code
Plug 'honza/vim-snippets'
"autoclose
Plug 'Townk/vim-autoclose'
" gc
Plug 'tomtom/tcomment_vim'
" tests
Plug 'janko-m/vim-test'
" js
Plug 'maksimr/vim-jsbeautify'
" syntax checking
Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'
" git
Plug 'tpope/vim-fugitive'
" Gbrowse
Plug 'shumphrey/fugitive-gitlab.vim'
call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Enable neocomplete
let g:neocomplete#enable_at_startup = 1

" Gitlab Domain Here
" let g:fugitive_gitlab_domains = ['']
