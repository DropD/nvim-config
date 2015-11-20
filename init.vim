"init.vim
"Rico Häuselmann

if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.config/nvim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-surround'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'euclio/vim-markdown-composer', {
\ 'build' : {
\     'mac' : 'env LDFLAGS="$LDFLAGS -L/usr/local/opt/openssl/lib" CFLAGS="$CFLAGS -I/usr/local/opt/openssl/include" cargo build --release',
\     'linux' : 'cargo build --release',
\     'unix' : 'cargo build --release',
\    },
\}
NeoBundle 'bling/vim-airline'

call neobundle#end()

filetype plugin indent on
set autoindent
set smartindent
syntax enable
autocmd Filetype python set tabstop=4|set shiftwidth=4|set expandtab

set incsearch
set virtualedit=all

set cursorline
hi CursorLine gui=underline guibg=black

set relativenumber
set number

"Customizing the NERDTree
let NERDChristmasTree=1
let NERDTreeHijackNetrw=1
let NERDTreeShowBookmarks=1

"easymotion
nmap , <Plug>(easymotion-prefix)

"airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts=1
let g:airline_theme='term'

set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline:h12 "uncomment if not on macbook-pro

NeoBundleCheck
