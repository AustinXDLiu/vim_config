"--- 跨终端粘贴
let g:copy_file=$HOME . "/.vimconfig/.vim_copybuffer"
function Write_copy_file()
"本函数将 @" 缓冲区内容写入文件
let lines=split(@", "\n")
call writefile(lines,g:copy_file)
endfunction

function Read_copy_file()
"将copy_file文件写入@" 缓冲区，并且粘贴
let l:buf=readfile(g:copy_file)
let @"=join(l:buf,"\n")
normal ""p
endfunction
nmap <silent> ;y :call Write_copy_file()<Enter>
nmap <silent> ;p :call Read_copy_file()<Enter>

"使用方法：
"先使用普通办法复制任意内容。
"使用
";y
"把刚才复制的内容写入临时文件
"再在另外一个终端的vim内使用
";p 
"粘贴
"
