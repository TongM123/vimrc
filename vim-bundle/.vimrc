
" -----------------------
" Vundle
" -----------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'user/L9', {'name': 'newL9'}
Plugin 'Powerline'

Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" -----------------------
" Plugins customizations
" -----------------------

" vim-airline
set laststatus=2
let g:airline_powerline_fonts=1

" NERDTree
nmap <F2> :NERDTreeToggle<CR>


" -----------------------
" Settings
" -----------------------

" Autoindent with two spaces,always expand tabs
set tabstop=2
set shiftwidth=2
set expandtab


set nobackup
set noswapfile


set nu " Line numbers on
set ruler " Ruler on


" -----------------------
" Theme
" -----------------------

" Fonts for Mac
set guifont=Monaco\ for\ Powerline:h12

" Syntax on
syntax on

" colorscheme
"colorscheme hybrid_reverse
"colorscheme molokai-yond
colorscheme hybrid_material

" charset
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

" Don't show the top bar
"set guioptions-=T
