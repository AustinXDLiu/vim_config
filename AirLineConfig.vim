""""""""""""""""""""""""""""""""""""""""""  
""" airline设置  
""""""""""""""""""""""""""""""""""""""""""  
set t_Co=256  
set laststatus=2  
set lazyredraw  
"let g:airline_theme='powerlineish'  
" 使用powerline打过补丁的字体  
"let g:airline_powerline_fonts=1  
if !exists('g:airline_symbols')  
    let g:airline_symbols={}  
    endif  
" 关闭空白符检测  
let g:airline#extensions#whitespace#enabled=0 
