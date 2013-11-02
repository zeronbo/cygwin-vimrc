set nocompatible
filetype off

"设置英文语言环境
let $LANG='en'
"取消拼写检查
set nospell
"设置菜单为英文
set langmenu=en
"设置字段及大小
"set guifont=Consolas:h11
"set gfw=YtYaHei:h11
"设置内部编码为utf-8
set encoding=utf-8
"设置打开文件时使用的编码顺序
set fileencodings=utf-8,cp936,chinese,latin-1
"设置消息为英文并使用utf-8编码
language messages en_US.utf-8
"设置行号
set number
"设置方法高亮
syntax enable
syntax on
"设置主题
colorscheme desert
"高亮显示匹配的括号
set showmatch
"设置命令行高为2
set cmdheight=2
"高亮当前行
set cursorline
"设置光标显示颜色
highlight CursorLine cterm=NONE ctermbg=8
"高亮显示匹配结果
set hlsearch
"在输入要搜索的文字时，vim实时匹配
set incsearch
"设置搜索时当输入字母有大写时，区分大小写
"否则不区分
set ignorecase smartcase
"修改leader(默认为\)键为逗号
let mapleader=','
"设置tab和space
set tabstop=4
"set shiftwidth=4
"set expandtab
"set smarttab
"不自动换行
set nowrap
set vb t_vb=
"增强命令行的搜索显示
set wildmenu
"据打开的文件自动切换工作目录
set autochdir
"允许退格键的使用
set backspace=indent,eol,start whichwrap+=<,>,[,]
"取消/开启高亮显示匹配结果(normal模式下',-空格')
nnoremap <leader><space> :set hls!<CR>
"取消/开启自动换行
nnoremap <leader>w :set wrap!<CR>
"新建标签页(normal模式下',-t')
nnoremap <leader>t :tabnew<CR>
"设置行号(normal模式)
nnoremap <leader>nu :set nu<CR>

"Status line {
set laststatus=2
set statusline=
"set statusline+=%-3.3n                      " buffer number
set statusline+=%F%m%r%h%w                   "path+filename
set statusline+=\[row=%l,col=%v]			"show line and column
set statusline+=%h%m%r%w                     " status flags
set statusline+=[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8b                       " character value
set statusline+=%-14(%l,%c%v%)               " line, character
set statusline+=%<%p                         " file position
"}

"to save, press ctrl-s {
"在正常(normal)模式下直接:w保存
nmap <C-S> :w<CR>
"在插入(insert)模式下通过模拟<esc>:w<cr>a，即先回
"到normal模式，然后:w保存，最后输入a回到insert模式
imap <C-S> <ESC>:w<CR>a
"}

"设置在插入模式下的键移动方式 {
inoremap <C-H> <Left>
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-L> <Right>
"}

"Vundle Setting {
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

"}

"My Bundles Setting {

"设置主题 {
"Bundle 'altercation/vim-colors-solarized'
"set background=dark
"colorscheme solarized
"}

