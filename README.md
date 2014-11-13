vimrc
=====

vim配置文件以及一些vim插件

这些都是自己电脑上的vim配置，之所以放在这上面，一方面是为了做个备份，另一方面也是为了能够把这些东西分享出来，互相学习。

## 一些插件地址

### 主题修改 ###

默认主题文件：/usr/share/vim/vim73/colors/

更多主题文件: [预览](http://vimcolorschemetest.googlecode.com/svn/html/index-html.html), [下载](http://vimcolorschemetest.googlecode.com/svn/colors/)

vim主题在线配置: [http://bytefluent.com/vivify/](http://bytefluent.com/vivify/)

```
 colorscheme molokai
```
本人使用的是由molokai修改后的主题: molokai-yond.vim

放在/usr/share/vim/vim73/colors/里面即可

### Emmet zenCoding -- 代码自动补全插件

插件地址：[https://github.com/mattn/emmet-vim](https://github.com/mattn/emmet-vim)

使用方法：把解压后的文件放在~/.vim里面即可

相关配置：更改快捷键：

```
"let g:user_emmet_leader_key='<C-e>'
```

### vim-javascript -- javascript高亮增强插件

插件地址：[https://github.com/pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)

使用方法：把解压后的syntax中得javascript.vim文件拷贝到~/.vim/syntax/中

相关配置：允许在html、css中增强高亮

```
let javascript_enable_domhtmlcss = 1
```


### Less hightlight -- LESS高亮插件

插件地址：[http://leafo.net/lessphp/vim/less.vim](http://leafo.net/lessphp/vim/less.vim)

使用方法：把下载的less.vim文件放在~/.vim/syntax文件夹里面即可

相关配置：在.vimrc里面添加以下代码：

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

插件地址：[https://github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

使用方法：把解压后的文件放在~/.vim里面即可

相关配置：在.vimrc里面添加以下代码：

```
nmap <F2> :NERDTreeToggle<CR>
```
### TagBar -- tag跳转

插件地址：[https://github.com/majutsushi/tagbar](https://github.com/majutsushi/tagbar)

网址: [http://majutsushi.github.io/tagbar/](http://majutsushi.github.io/tagbar/)

使用方法：把解压后的文件放在~/.vim里面，同时需要安装ctags, 到[http://ctags.sourceforge.net/](http://ctags.sourceforge.net/)下载ctags，然后解压安装，命令如下:

```
tar xzvf ctags-5.8.tar.gz
mv ctags-5.8 ~/Applications
cd ~/Applications/ctags-5.8
./configure
make
sudo make install
```

相关配置：在.vimrc里面添加以下代码:

```
nmap <F8> :TagbarToggle<CR>
```

### minibufexpl -- 文件tab切换

插件下载: [https://github.com/fholgado/minibufexpl.vim](https://github.com/fholgado/minibufexpl.vim)

---

更厉害的配置推荐：

[https://github.com/humiaozuzu/dot-vimrc](https://github.com/humiaozuzu/dot-vimrc)

[https://github.com/spf13/spf13-vim](https://github.com/spf13/spf13-vim)

MIT