set ts=2 sw=2

call plug#begin()
"ga
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/neocomplete.vim'
Plug 'tpope/vim-dispatch'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'tobyS/vmustache'
Plug 'janko-m/vim-test'
Plug 'maksimr/vim-jsbeautify'
Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Enable neocomplete
let g:neocomplete#enable_at_startup = 1
