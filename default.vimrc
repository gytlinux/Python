" 此vim配置位置为 ~/.vimrc
" 高亮当前行
set cursorline
" TAB 设为四个空格
set tabstop=4
" 自动缩进
set autoindent
" 自动缩进四个空格
set shiftwidth=4
" 使用空格代替TAB
set expandtab
" 定义PythonHeader()函数用于自动插入python文件头
function PythonHeader()
    call setline(1,"#!/usr/bin/python")
    call setline(2,"# -*- coding: utf-8 -*-")
    normal G
    normal o
    normal o
endfunc
" 新建py结尾的文件时自动调用PythonHeader()函数
autocmd BufNewFile *.py call PythonHeader()

" 按下F5自动执行当前Python文件
map <F5> :!clear ;python % <CR>
