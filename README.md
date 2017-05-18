# vim_config
This is my vim guideline and config for my own.

1. Install Vim 8

	a. 	Download the vim 8 source code. Run the command:
		'git clone https://github.com/vim/vim.git'
	b. 	Let's assume we put the vim source code in ~/vim.
		Run the command:
		'cd ~/vim'
		'./configure --with-features=huge             --enable-multibyte             --enable-rubyinterp=yes             --enable-pythoninterp=yes             --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/                  --enable-perlinterp=yes             --enable-luainterp=yes             --enable-gui=gtk2 --enable-cscope --prefix=/usr'   (This step is for configuring the compiling of vim 8, remember to put --enable-pythoninterp=yes to enable python support, otherwise YCM can not work. Either python 2.x support or python 3.x support is ok, but don't select both.)
		'make'     (This step is for compiling vim 8.)
		'make install '      (This step is for installing vim 8.)
		Now you should be able to run vim.
		If you can't, should be the link problem, create a soft link from /usr/bin/vim to the correct executable vim.
		Use command 'vim --version' to check if it has python support, if not, you need to recompile and fix it.
2. Install Vundle for Vim:
	a.	Create dir ~/.vim/bundle.
	b.	Run 'git clone https://github.com/gmarik/vundle.git' in this dir.

3. Configure about the color
	a.	In dir ~/.vim/bundle, run 'git clone git://github.com/altercation/vim-colors-solarized.git'.
	b.	Run 'cp -r ~/.vim/bundle/vim-colors-solarized/colors ~/.vim/'.

4. Create a soft link for vimrc as ~/.vimrc.

5. Run vim, then use command :PluginInstall to install those modules.

6. If you want to install YouCompleteMe, read the following steps:(Reference website http://www.jianshu.com/p/d908ce81017a?nomobile=yes)
	a. 	Make sure you have the dependance package, run the command as below:
		'sudo apt-get install build-essential cmake python-dev'
	b.	Download llvm+clang-3.9, http://releases.llvm.org/download.html, download the Pre-Built Binaries version. unzip, and copy the bin/ etc to /usr/local.
		'sudo cp -r ~/clang-3.9/* /usr/local/'
	c.	Uncommend 'Plugin 'Valloric/YouCompleteMe' ' in ~/.vimrc after Vundle.
		Then open vim, and run ':PluginInstall'.
		(It may take long...)
	d.	Create a build folder for YCM.
		'mkdir ~/.ycm_build'
	e.	Create CMakelist.
		'cd ~/.ycm_build'
		'cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp'
		Check the message to see if it can find python support and clang package
	f.	Compile the YCM core, run this command under ~/.ycm_build.
		'cmake --build . --target ycm_core'
	g.	Have fun

7.	If you want to install ctags, read the following steps:
	a.	Download the source from http://ctags.sourceforge.net/.
	b.	Unzip it and run './configure' in the folder. Then run 'make' and then 'make install'.
	c.	Uncommend 'source ~/.vimconfig/CTagsConfig.vim' in vimrc file. Then you can use ctrl+F12 to create the tags file.
	d.	Use command to generate the tags file for system:
		'ctags -R -f ~/.vim/sys_tags -I __THROW --extra=+f --languages=c --langmap=c:+.h --c-kinds=+px --fields=+aiKSz /usr/include /usr/local/include /opt/ros/indigo/include'

	Two commands are often used:
	Ctrl+]	For jumping to the definition
	Ctrl+t	For jumping back to forward screen
	Ctrl+F12	For generating the ctags file (Configured in CtagsConfig.vim)

	(Recommand install Taglist)

8.	If you want to install Taglist, read the following steps:
	a.	Download the source from http://vim-taglist.sourceforge.net/index.htm://vim.sourceforge.io/scripts/script.php?script_id=273.
	b.	Unzip it and put the folder /plugin and /doc to ~/.vim/.
	c.	Uncommend 'source ~/.vimconfig/TagListConfig.vim'.

9.	If you want to install Cscope, read the following steps:
	a.	Download the source from https://sourceforge.net/projects/cscope/files/cscope/.
	b.	Unzip it and run './configure' in the folder. Then run 'make' and then 'make install'.
	c.	Download http://cscope.sourceforge.net/cscope_maps.vim to ~/.vim/plugin/.
	d.	Run the command in your project folder:
		'cscope -Rbq -f path/xxx.out'
	e.	Config the ~/.vimconfig/CscopeConfig.vim, import the path/xxx.out you create in the last step.

	Two commands are often used:
	Ctrl+\ then s	For checking where did it appeared
	Ctrl+\ then c	For checking where did it used/called
