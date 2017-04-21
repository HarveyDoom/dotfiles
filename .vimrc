""""""""""""""""""""""
"       Vundle       "
""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

""""""""""""""""""""""
"      Plugins       "
""""""""""""""""""""""

" Plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Plugin offical vimperator syntax highlighting file
Plugin 'vimperator/vimperator.vim'

" Improved status bar
Plugin 'vim-airline/vim-airline'

" File Explorer
Plugin 'scrooloose/nerdtree'

" Completion Engine
Plugin 'Valloric/YouCompleteMe'

" Snippet Engine
Plugin 'SirVer/ultisnips'

" Snippets
Plugin 'honza/vim-snippets'

" Bootstrap 3 Snippets
Plugin 'chrisgillis/vim-bootstrap3-snippets'

"Improved PHP omni-completion. Based on the default phpcomplete.vim
Plugin 'shawncplus/phpcomplete.vim'

" Syntax highlighting for Blade Templates
Plugin 'jwalton512/vim-blade'

" Syntax highlighting for Vue
Plugin 'posva/vim-vue'

" Syntax highlighting for HTML5
Plugin 'othree/html5.vim'

" Syntax highlighting for Javascript
Plugin 'othree/yajs.vim'

" Surroundings " ' () {} []
Plugin 'tpope/vim-surround'

" Repeat plugin commands
Plugin 'tpope/vim-repeat'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides.git'

" Fuzzy file finding
Plugin 'junegunn/fzf'

" Commenting Keybindings.
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

""""""""""""""""""""""
"       Config       "
""""""""""""""""""""""

syntax on          "Syntax Color Hightlighting
set nu             "Show line numbers
set relativenumber "Relative numbering
set showmatch      "Show bracket matches
set showcmd        "Show command at bottom of screen
set noerrorbells   "No annoying error beep

set shiftwidth=4   " Tabs and spaces, pew pew pew
set tabstop=4
set expandtab
set autoindent

set wildmenu       "Show a list of completions (filenames) in the modeline
set wildmode=full  "Configure the above
set noesckeys      "Prevent delay when pressing O(new line above) after esc
set background=dark "Fixes colour issues

set ignorecase     "Case insensitve search
set smartcase      "Case sensitive for captial letter search
set incsearch      "Move the cursor to the matched string while searching

" Make search results appear in the middle of the screen
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

""""""""""""""""""""""
"Leader Key Mappings "
""""""""""""""""""""""
let mapleader = ','

" Yank and paste to system clipboard
nnoremap <leader>y "+y
nnoremap <leader>p "+p

" vsplit
nnoremap <leader>v :vsplit<CR>

" Open Nerdree
nnoremap <leader>n :NERDTreeToggle<CR>

" Move between Windows with ease
nnoremap <c-H> <c-w>h
nnoremap <c-L> <c-w>l
nnoremap <c-K> <c-w>k
nnoremap <c-J> <c-w>j

nnoremap <leader>f :FZF<CR>
nnoremap <leader>u :!./vendor/bin/phpunit<CR>
nnoremap <leader>a :!php artisan 
nnoremap <leader>o :!composer 

"AirLine
"Shows status line (airline)
"set laststatus=2 
"let g:airline_powerline_fonts=1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Colours for indent guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235
