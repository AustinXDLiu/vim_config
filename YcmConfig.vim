let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"按gb 会跳转到定义
nnoremap <silent> gb :YcmCompleter GoToDefinitionElseDeclaration<CR>
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0
" 在注释输入中也能补全  
let g:ycm_complete_in_comments = 1
" C/C++关键字自动补全
let g:ycm_seed_identifiers_with_syntax = 1
" 添加Ctags支持
"set g:ycm_collect_identifiers_from_tags_files = 1
