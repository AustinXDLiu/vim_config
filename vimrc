" Reference website http://www.jianshu.com/p/d908ce81017a?nomobile=yes
" 1. Install Vim 8
" 
" 	a. 	Download the vim 8 source code. Run the command: 
" 		'git clone https://github.com/vim/vim.git'
" 	b. 	Let's assume we put the vim source code in ~/vim.
" 		Run the command:
" 		'cd ~/vim'
" 		'./configure --with-features=huge             --enable-multibyte             --enable-rubyinterp=yes             --enable-pythoninterp=yes             --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/                  --enable-perlinterp=yes             --enable-luainterp=yes             --enable-gui=gtk2 --enable-cscope --prefix=/usr'   (This step is for configuring the compiling of vim 8, remember to put --enable-pythoninterp=yes to enable python support, otherwise YCM can not work. Either python 2.x support or python 3.x support is ok, but don't select both.)
" 		'make'     (This step is for compiling vim 8.)
" 		'make install '      (This step is for installing vim 8.)
" 		Now you should be able to run vim.
" 		If you can't, should be the link problem, create a soft link from /usr/bin/vim to the correct executable vim.
" 		Use command 'vim --version' to check if it has python support, if not, you need to recompile and fix it.
" 2. Install Vundle for Vim:
"	a.	Create dir ~/.vim/bundle.
"	b.	Run 'git clone https://github.com/gmarik/vundle.git' in this dir.
"
" 3. Configure about the color
" 	a.	In dir ~/.vim/bundle, run 'git clone git://github.com/altercation/vim-colors-solarized.git'.
" 	b.	Run 'cp -r ~/.vim/bundle/vim-colors-solarized/colors ~/.vim/'.
"
" 4. Copy this file as .vimrc to dir ~/.
"
" 5. Run vim, then use command :PluginInstall to install those modules.
"
" 6. If you want to install YouCompleteMe, read the following steps:
"	a. 	Make sure you have the dependance package, run the command as below:
"		'sudo apt-get install build-essential cmake python-dev'
"	b.	Download llvm+clang-3.9, http://releases.llvm.org/download.html, download the Pre-Built Binaries version. unzip, and copy the bin/ etc to /usr/local.
"		'sudo cp -r ~/clang-3.9/* /usr/local/'
"	c.	Uncommend 'Plugin 'Valloric/YouCompleteMe' ' in ~/.vimrc after Vundle.
"		Then open vim, and run ':PluginInstall'.
"		(It may take long...)
"	d.	Create a build folder for YCM.
"		'mkdir ~/.ycm_build'
"	e.	Create CMakelist.
"		'cd ~/.ycm_build'
"		'cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp'
"		Check the message to see if it can find python support and clang package
"	f.	Compile the YCM core, run this command under ~/.ycm_build.
"		'cmake --build . --target ycm_core'
"	g.	Have fun

	

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
set autoindent
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

" 你在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim  
 
" 设置Ctags文件位置
set tags=~/catkin_ws/src/tags

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
