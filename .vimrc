set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Valloric/YouCompleteMe'
Bundle 'flazz/vim-colorschemes'
Bundle 'fatih/vim-go'
Bundle 'vim-scripts/TagHighlight'
Bundle 'nsf/gocode'
Bundle 'mbbill/echofunc'
"BundleList 列举列表（也就是.vimrc）中配置的所有插件
"BundleInstall 安装列表中所有插件
"BundleInstall! 更新列表中所有插件
"BundleSearch foo 查询foo插件
"BundleSearch foo! s刷新foo插件
"BundleClean 清除列表中没有的插件
"BundleClean! 清除列表中没有的插件
"Bundle 'vim-scripts/TaskList.vim'
filetype plugin indent on
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"map
map nt :NERDTreeToggle<CR>
map tl :TlistToggle<CR>
map tb :TagbarToggle<CR>
map jd :YcmCompleterGoToDefinitionElseDeclaration<CR>
let mapleader="," 
"insert mode to move
imap <c-k> <Up>
imap <c-j> <Down>
imap <c-h> <Left>
imap <c-l> <Right>
imap <c-b> <ESC>0i
imap <c-e> <ESC>$i

set nu
set ts=4
set shiftwidth=4
"set softtabstop=4
set expandtab
set autoindent
set smartindent
inoremap jk <ESC>
"colorscheme desert 
colorscheme molokai 
"colorscheme solarized 
syntax enable

let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_structs=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',  
    \ 'kinds'     : [  
        \ 'p:package',  
        \ 'i:imports:1',  
        \ 'c:constants',  
        \ 'v:variables',  
        \ 't:types',  
        \ 'n:interfaces',  
        \ 'w:fields',  
        \ 'e:embedded',  
        \ 'm:methods',  
        \ 'r:constructor',  
        \ 'f:functions'  
    \ ],  
    \ 'sro' : '.',  
    \ 'kind2scope' : {  
        \ 't' : 'ctype',  
        \ 'n' : 'ntype'  
    \ },  
    \ 'scope2kind' : {  
        \ 'ctype' : 't',  
        \ 'ntype' : 'n'  
    \ },  
    \ 'ctagsbin'  : 'gotags',  
    \ 'ctagsargs' : '-sort -silent'  
\ }  


