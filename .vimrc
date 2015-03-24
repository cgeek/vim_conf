set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'Vundle.vim'
Plugin 'nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'jQuery'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

syntax enable
syntax on
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4

colorscheme molokai
" search
set hlsearch
set incsearch

" javascript settings
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" html5 settings
let g:html5_event_handler_attributes_complete = 0

" nerdtree settings
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <silent> <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ctags settings
let Tlist_Ctags_Cmd ='/usr/local/Cellar/ctags/5.8/bin/ctags' 
" taglist settings
 let Tlist_Use_Right_Window = 1 "让taglist窗口出现在Vim的右边
 let Tlist_File_Fold_Auto_Close = 1
 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
 let Tlist_Show_One_File = 1 "只显示一个文件中的tag，默认为显示多个
 let Tlist_Sort_Type ='name'
 "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
 let Tlist_GainFocus_On_ToggleOpen = 1
 "Taglist窗口打开时，立刻切换为有焦点状态
 let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
 let Tlist_WinWidth = 32 "设置窗体宽度为32，可以根据自己喜好设置
 map <silent> <F9> :TlistToggle <CR>

 " emment settings
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:emmet_html5 = 0

" neocompletecache settings
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

