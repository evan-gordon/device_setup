execute pathogen#infect()
syntax on
filetype plugin indent on

"NERDTree file tree settings
" Uncomment to make NERDTree open on vim startup
" autocmd vimenter * NERDTree

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
let g:syntastic_ruby_checkers = ['mri']


" Needed for tmux and vim to play nice
map <Esc>[B <Down>
