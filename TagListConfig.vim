"同时显示多个文件中的tag时，使taglist只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_File_Fold_Auto_Close = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"在右侧窗口中显示taglist窗口
let Tlist_Use_Right_Window = 1
"启动VIM后，自动打开taglist窗口
let Tlist_Auto_Open = 0
"即使没打开Taglist也一样执行
let Tlist_Process_File_Always = 1
"打开taglist后跳转到taglist窗口
let Tlist_GainFocus_On_ToggleOpen = 1
"快捷键调出Taglist
nnoremap <silent> <F5> :TlistToggle<CR>
