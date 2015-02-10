"
" " Plugins
"

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'msanders/snipmate.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'

call plug#end()

"
" " Plugin settings
"

" Easy align interactive
vnoremap <silent> <Enter> :EasyAlign<cr>

" ctrlp.vim
try
  let g:ctrlp_match_window = 'bottom,order:ttb'
  let g:ctrlp_switch_buffer = 0
  let g:ctrlp_working_path_mode = 0
  let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|\.(o|swp|pyc|egg)$'
catch
endtry

" cpp enhanced highlight
try
  let g:cpp_class_scope_highlight = 1
  "let g:cpp_experimental_template_highlight = 1
catch
endtry
"
" " Theme
"

set background=dark
try
  let g:solarized_termtrans = 1
  let g:solarized_termcolors = 256
  colorscheme solarized

  " Toggle background color
  call togglebg#map("<F5>")
catch
endtry

" Airline

try
  " Remove <> arrows in Airline
  let g:airline_left_sep=''
  let g:airline_right_sep=''

  let g:airline_theme = 'solarized'
catch
endtry

"
" " VIM
"

set nocompatible
syntax on

" History
set history=1000

" Indent
set autoindent
set smartindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set shiftround
set expandtab
set nowrap
set preserveindent

" VIM UI
filetype on
filetype plugin on
set ch=2
set wildmenu
set number " Line numbers
set report=0 " Do not show changes
set showmatch
set ruler
set incsearch
set ignorecase " Ignore case on search
set backspace=2
set whichwrap+=<,>,[,],h,l
set shortmess=atI
set showmode
set showcmd
set laststatus=2 " Always show status
set visualbell
set mat=5       " duration to show matching brace (1/10 sec)
set showtabline=2 " Always show tab bar
set backupdir=~/.vim/backup " Backupfiles
set directory=~/.vim/tmp " Swapfiles

if v:version >= 703
  set undofile
  set undodir=~/.vim/undofiles

  " paint the max line
  " set colorcolumn=+1
endif

" General
set encoding=utf-8
set textwidth=78

" Folds, this is damn nice
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

set list listchars=tab:»·,trail:·

" Filetypes
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile {*.c,*.go} set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

" Set the keys to turn spell checking on/off
map <F7> <Esc>:setlocal spell spelllang=sv<CR>
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>
