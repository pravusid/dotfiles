set number
set cursorline
set hlsearch
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch

set paste
set clipboard=unnamedplus

set list
set listchars=tab:\|\ ,trail:·

set guifont=DejaVu\ Sans\ Mono\ 12

ca ㅈ w
ca ㅈㅂ wq

map <F12> mzgg=G`z


"vim-plug list below

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'yggdroot/indentline'
Plug 'airblade/vim-gitgutter'

call plug#end()


"vim-plug settings below

let g:nord_cursor_line_number_background=1
let g:nord_bold_vertical_split_line=1
let g:nord_uniform_diff_background=1
colorscheme nord

let g:airline_theme='nord'
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_loc_list_height=3
