"========= MyVimConfig Start ==========

set shortmess=atI "启动时不显示乌干达儿童....
"set lines=40 columns=155 "设定窗口大小
set nocompatible "不要使用vi的键盘布局,而是使用vim自己的
set number "显示行号
set go= "不要图形按钮
set guifont=Courier_New:h10 "设置字体"
set laststatus=1 "启动显示状态行1，总是显示状态行2
set cmdheight=2 "设置命令行高度为2

set foldenable "允许折叠
set foldmethod=manual "手动折叠
set autoindent
set confirm
set showmatch
set ruler
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent

set nobackup "从不备份
setlocal noswapfile "不生成swap文件
set bufhidden=hide

"set clipboard+=unnamed


set showmatch "高亮显示匹配的括号

"设置配色方案
colorscheme molokai-yond

"设置编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8


"	 Emmet zenCoding
"==== 自动补全
"let g:user_emmet_leader_key='<C-e>'


"   powerLine
"==== 状态栏增强插件
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
let Powerline_symbols='compatible'


"   neocomplcache
""==== 代码提示插件
let g:neocomplcache_enable_at_startup = 0     "vim 启动时启用插件
let g:neocomplcache_disable_auto_complete = 1 "不自动弹出补全列表


"   nerdtree
"==== 目录树结构的文件浏览插件
let g:NERDTreeWinSize=26
nmap <F2> :NERDTreeToggle<CR>


" vim-javascript
"==== javascript高亮增强
let javascript_enable_domhtmlcss = 1

" Less hightlight
" Less高亮
au BufNewFile,BufRead *.less set filetype=less


"    Tagbar (base on ctags)
"====显示当前文件的标签
let g:tagbar_width=26
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 2
let g:tagbar_singleclick = 1
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
if filereadable(expand("$HOME/.vim/ctags.vim"))
	source $HOME/.vim/ctags.vim
endif

" ctags config
"==== for CSS


" miniBufExplorer
"====多文件编辑
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0  



"========= MyVimConfig End   ==========








"	以下内容是mac自带的
"==============================


" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file
"endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
