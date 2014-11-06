vimrc
=====

vim配置文件以及一些vim插件

这些都是自己电脑上的vim配置，之所以放在这上面，一方面是为了做个备份，另一方面也是为了能够把这些东西分享出来，互相学习。

## 一些插件地址

### Emmet zenCoding -- 代码自动补全插件

插件地址：

使用方法：

相关配置：见.vimrc文件


### Less hightlight -- LESS高亮插件

插件地址：[http://leafo.net/lessphp/vim/less.vim](http://leafo.net/lessphp/vim/less.vim)

使用方法：把下载的less.vim文件放在~/.vim/syntax文件夹里面即可

相关配置：在.vimrc里面添加下面这一句：

```
au BufNewFile,BufRead *.less set filetype=less

```

### vim-powerline -- 状态栏增强插件

插件地址：[https://github.com/Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline)

使用方法: 把解压后的文件放在~/.vim里面即可

相关配置：在.vimrc里面添加以下代码：

```
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
let Powerline_symbols='compatible'
```

### neocomplcache.vim -- 代码提示插件

插件地址：[https://github.com/Shougo/neocomplcache.vim](https://github.com/Shougo/neocomplcache.vim)

使用方法：把解压后的文件放在~/.vim里面即可

相关配置：在.vimrc里面添加以下代码：

```
"vim 启动时启用插件
let g:neocomplcache_enable_at_startup = 1

"不自动弹出补全列表
"let g:neocomplcache_disable_auto_complete = 1 
```

### nerdtree -- 目录树结构文件浏览插件

插件地址：

使用方法：把解压后的文件放在~/.vim里面即可

相关配置：见.vimrc文件