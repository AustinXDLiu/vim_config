" 屏蔽Vi兼容
set nocompatible
set backspace=indent,eol,start

" 打开文件类型检测
filetype plugin indent on

" 色彩搭配方案
syntax enable
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized

" 垂直缩进对齐线的设置
set list
set listchars=tab:\|\ ,trail:-,extends:>,precedes:<

" 设置匹配高亮
set hls

" 设置高亮当前行
set cul

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 打开行号
set nu

" 设置tab选项
set noexpandtab
set ts=4

" 设置换行自动对齐
"set autoindent
set smartindent

" 设置折叠方式为对标志折叠
set foldmethod=syntax
"set foldmethod=marker

"设置在vim中可以使用鼠标
"set mouse=a

" 设置搜索忽略大小写
set ignorecase

" 设置搜索输入时直接跳转
set incsearch

" 快捷键清除行尾空格
"map <silent> <C-e> :%s/\s*$//g<CR>

" 当修改vimrc时自动重新加载
autocmd! bufwritepost vimrc source ~/.vimrc

" 你在此设置运行时路径
set rtp+=~/.vim/bundle/Vundle.vim

" vundle初始化
call vundle#begin()

" 这应该始终是第一个
Plugin 'gmarik/Vundle.vim'

" 该例子来自https://github.com/gmarik/Vundle.vim README
" 这是Vim 里面的Git集成
Plugin 'tpope/vim-fugitive'

" 在行首显示Git diff 的插件
Plugin 'airblade/vim-gitgutter'

" 自动完成插件
Plugin 'Valloric/YouCompleteMe'

" 状态栏
Plugin 'bling/vim-airline'

" 树状文件目录
Plugin 'scrooloose/nerdtree'

" 树状文件目录对Git加强
Plugin 'Xuyuanp/nerdtree-git-plugin'

" 语法检查
"Plugin 'scrooloose/syntastic'
" 来自http://vim-scripts.org/vim/scripts.html的插件
" Plugin 'L9'
"未托管在GitHub上的Git插件
" Plugin 'git://git.wincent.com/command-t.git'
"本地机器上的git软件库（即编写自己的插件时）
" Plugin 'file:///home/gmarik/path/to/plugin'
" sparkup vim脚本在名为vim的该软件库子目录下。
" 传递路径，合理设置运行时路径。
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 与L9避免名称冲突
" Plugin 'user/L9', {'name': 'newL9'}

"每个插件都应该在这一行之前
call vundle#end()            " required

" NERDtree的设置
source ~/.vimconfig/NERDtreeConfig.vim

" 状态栏AirLine的设置
source ~/.vimconfig/AirLineConfig.vim

" 跨终端复制设置
source ~/.vimconfig/CrossTermCopy.vim

" YCM的设置
source ~/.vimconfig/YcmConfig.vim

" GitGutter的设置
source ~/.vimconfig/GitGutterConfig.vim

" CTags的设置
source ~/.vimconfig/CTagsConfig.vim

" Taglist的设置
source ~/.vimconfig/TagListConfig.vim

" Cscope的设置
source ~/.vimconfig/CscopeConfig.vim
