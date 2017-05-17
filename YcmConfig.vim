let g:ycm_global_ycm_extra_conf = '~/.vimconfig/ycm_extra_conf.py'
"按gd 会跳转到定义
nnoremap <silent> gd :YcmCompleter GoToDefinition<CR>
"按gb 会跳转到定义
nnoremap <silent> gb :YcmCompleter GoToDeclaration<CR>
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0
" 在注释输入中也能补全  
let g:ycm_complete_in_comments = 1
" C/C++关键字自动补全
let g:ycm_seed_identifiers_with_syntax = 1
" 设置错误检查的标志
let g:ycm_error_symbol = '✗✗'
let g:ycm_warning_symbol = '⚠⚠'

let g:ycm_always_populate_location_list = 1
" 绑定F3为语法检查
nnoremap <F3> :call Diagnostics()<CR>
" 语法检查和打开错误窗口函数
func! Diagnostics()
	exec "YcmForceCompileAndDiagnostics"
	exec "lopen"
	exec "5wincmd _"
endfunc
" 绑定F4为关闭错误分析窗口
nnoremap <F4> :lclose<CR>
" 添加Ctags支持
"set g:ycm_collect_identifiers_from_tags_files = 1
