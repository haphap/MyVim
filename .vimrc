"leave it empty
" {{{
" DesCRiption: 适合自己使用的vimrc文件，for Linux/Windows, GUI/Console
" Last Change: 2011-09-01
" Author:      Asins - asinsimple AT gmail DOT com
"              Get latest vimrc from http://nootn.com/lab/vim
" Version:     2.5.2
"}}}
"
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'
 Bundle 'https://github.com/Lokaltog/vim-powerline.git'
 Bundle 'https://github.com/vim-scripts/octave.vim--.git'
 Bundle 'https://github.com/vim-scripts/bufexplorer.zip.git'
 Bundle 'https://github.com/vim-scripts/project.tar.gz.git'

 " 设置leader为,
let mapleader=","
let g:mapleader=","

" 关闭 vi 兼容模式
set nocompatible
" 自动语法高亮
syntax enable
" 检测文件类型
set transparency=5
set guioptions=aAce

"LATEX文件
"set ft=tex

" 检测文件类型插件
filetype plugin on
" 检测插件indent
filetype plugin indent on
filetype indent on 
let g:tex_flavor='latex'

" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

"设定拼写检测
"set spell
"setlocal spell spelllang=en_us


"mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2

"Set to auto read when a file is changed from the outside
if exists("&autoread")
	set autoread
endif



" 显示行号
set number
" 上下可视行数
set scrolloff=6
" 设定 tab 长度为 4
set tabstop=4
" 设置按BackSpace的时候可以一次删除掉4个空格
set softtabstop=4
" 设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=4
set smarttab
set history=1024
" 不突出显示当前行
set nocursorline
" 覆盖文件时不备份
set nobackup
" 自动切换当前目录为当前文件所在的目录
set autochdir
" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase
" 搜索到文件两端时不重新搜索
set nowrapscan
" 实时搜索
set incsearch
" 搜索时高亮显示被找到的文本
set hlsearch
" 关闭错误声音
set noerrorbells
set novisualbell
set t_vb=

" 不自动换行
set wrap
"How many tenths of a second to blink
set mat=2
" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hidden
" 智能自动缩进
set smartindent
" 设定命令行的行数为 1
set cmdheight=1
" 显示状态栏 (默认值为 1, 无法显示状态栏)
set laststatus=2
"显示括号配对情况
set showmatch

" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题

set display=lastline

" 设定配色方案
set background=dark
colorscheme solarized


" 设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)

" 显示Tab符
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"启动时不显示 捐赠提示
set shortmess=atl

"blank      空白
"buffers    缓冲区
"curdir     当前目录
"folds      折叠
"help       帮助
"options    选项
"tabpages   选项卡
"winsize    窗口大小
"slash      转换文件路径中的\为/以使session文件兼容unix
"unix       设置session文件中的换行模式为unix
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,slash,unix,resize

" {{{ 开始折叠
set foldenable
" 设置语法折叠
" manual  手工定义折叠
" indent  更多的缩进表示更高级别的折叠
" expr    用表达式来定义折叠
" syntax  用语法高亮来定义折叠
" diff    对没有更改的文本进行折叠
" marker  对文中的标志折叠
set foldmethod=indent
"折叠相关的快捷键
"zR 打开所有的折叠
"za Open/Close (toggle) a folded group of lines.
"zA Open a Closed fold or close and open fold recursively.
"zi 全部 展开/关闭 折叠
"zo 打开 (open) 在光标下的折叠
"zc 关闭 (close) 在光标下的折叠
"zC 循环关闭 (Close) 在光标下的所有折叠
"zM 关闭所有可折叠区域
" 设置折叠区域的宽度
set foldcolumn=0
" 设置折叠层数为
setlocal foldlevel=1
" 新建的文件，刚打开的文件不折叠
autocmd! BufNewFile,BufRead * setlocal nofoldenable
" }}}

" Alt-W切换自动换行
"noremap <a-w> :exe &wrap==1 ? 'set nowrap' : 'set wrap'<cr>

" 选中状态下 Ctrl+c 复制
vnoremap <c-c> "+y

" Shift + Delete 插入系统剪切板中的内容
noremap <S-Del> "+p
inoremap <S-Del> <esc>"+pa
vnoremap <S-Del> d"+P

"设置代码折叠方式为 手工  indent
"set foldmethod=indent
"设置代码块折叠后显示的行数
set foldexpr=1
""""""""""""""""""""""""""""""""""""""""""""
"GUI""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
   "set guioptions-=m " 隐藏菜单栏
   "set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
"   set guioptions =e " 显示tab页
endif


""""""""""""""""""""""""""""""""""""""""
set guifont=Monaco:h16
let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""
"编辑vim配置文件
if has("unix")
    set fileformats=unix,dos,mac
    nmap <leader>e :tabnew $HOME/.vimrc<cr>
    let $VIMFILES = $HOME."/.vim"
else
    set fileformats=dos,unix,mac
    nmap <leader>e :tabnew $VIM/_vimrc<cr>
    let $VIMFILES = $VIM."/vimfiles"
endif

" Alt-Space is System menu
if has("gui")
  noremap <m-space> :simalt ~<cr>
  inoremap <m-space> <c-o>:simalt ~<cr>
  cnoremap <m-space> <c-c>:simalt ~<cr>
endif

" 设定doc文档目录
let helptags=$VIMFILES."/doc"
set helplang=cn
"set nobomb

" {{{ 编码字体设置
"   if has("multi_byte")
"     set encoding=unicode
"     let &termencoding = &encoding
"     " Set default encoding as UTF-8 with not BOM
"     setglobal fileencoding=utf-8 bomb
"     " Auto detect the file encoding BOM unicode, utf-8, GBK, Big5, Latin1
"     set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
"
"     " Walkaround the encoding problem for fenc=utf-8 && enc=ucs-2
"     augroup i18n
"         autocmd!
"         autocmd BufReadPost * if &fileencoding == "utf-8" | let &encoding = &fileencoding | endif
"     augroup END
"   endif

set termencoding=chinese
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
" }}}

" {{{全文搜索选中的文字
vnoremap <silent> <leader>f y/<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
vnoremap <silent> <leader>F y?<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
" }}}

" 删除所有行未尾空格
nnoremap <f12> :%s/[ \t\r]\+$//g<cr>

" 窗口切换
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Buffers/Tab操作快捷方式!
nnoremap <s-h> :bprevious<cr>
nnoremap <s-l> :bnext<cr>
nnoremap <s-j> :tabnext<cr>
nnoremap <s-k> :tabprev<cr>
nnoremap <s-z> :bd<cr>
" 插入模式下上下左右移动光标
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <c-o>gj
inoremap <c-k> <c-o>gk

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
"nnoremap <leader>1 :set filetype=xhtml<cr>
"nnoremap <leader>2 :set filetype=css<cr>
"nnoremap <leader>3 :set filetype=javascript<cr>
"nnoremap <leader>4 :set filetype=php<cr>

" PHP Twig 模板引擎语法
"au BufRead,BufNewFile *.twig set syntax=twig

" Python 文件的一般设置，比如不要 tab 等
"autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

" 设置字典 ~/.vim/dict/文件的路径
"autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dic
"autocmd filetype css set dictionary=$VIMFILES/dict/css.dic
"autocmd filetype php set dictionary=$VIMFILES/dict/php.dic

autocmd! FileType * exec "set dict+=$VIMFILES/dict/".&ft.".dic"
"set tags+=$VIM/vimfiles/tags/normal/*
"autocmd! FileType * exec "set tags+=$VIM/vimfiles/tags/".&ft."/*"
"inoremap <expr><tab>  pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <expr><s-tab>  pumvisible() ? "\<c-p>" : "\<tab>"

"au filetype php map <F11> :call CheckPHPSyntax()<CR>

"function! RunSelectPHPScript()
    "'<,'>w !php
"endfunction

"au filetype php vnoremap <C-F11> <Esc> :call RunSelectPHPScript()<CR>



" {{{ plugin - renamer.vim 文件重命名
" :Renamer 将当前文件所在文件夹下的内容显示在一个新窗口
" :Ren 开始重命名
"}}}


" {{{ plugin - bufexplorer.vim Buffers切换
" \be 全屏方式查看全部打开的文件列表
" \bv 左右方式查看   \bs 上下方式查看
"}}}

    function! AutoClose()
        :inoremap ( ()<ESC>i
        :inoremap " ""<ESC>i
        :inoremap ' ''<ESC>i
        :inoremap { {}<ESC>i
        :inoremap [ []<ESC>i
        :inoremap ) <c-r>=ClosePair(')')<CR>
        :inoremap } <c-r>=ClosePair('}')<CR>
        :inoremap ] <c-r>=ClosePair(']')<CR>
    endf

    function! ClosePair(char)
        if getline('.')[col('.') - 1] == a:char
            return "\<Right>"
        else
            return a:char
        endif
	endf

" {{{ plugin - bookmarking.vim 设置标记（标签）
" <f9> 设置标记    <f4> 向下跳转标记   <s-f4> 向上跳转标记
"map <f9>   :ToggleBookmark<cr>
map <f4>   :NextBookmark<cr>
map <s-f4> :PreviousBookmark<cr>
"}}}


" {{{ plugin - matchit.vim 对%命令进行扩展使得能在嵌套标签和语句之间跳转
" % 正向匹配      g% 反向匹配
" [% 定位块首     ]% 定位块尾
"}}}


" {{{ plugin - mark.vim 给各种tags标记不同的颜色，便于观看调式的插件。
" 这样，当我输入“,hl”时，就会把光标下的单词高亮，在此单词上按“,hh”会清除该单词的高亮。如果在高亮单词外输入“,hh”，会清除所有的高亮。
" 你也可以使用virsual模式选中一段文本，然后按“,hl”，会高亮你所选中的文本；或者你可以用“,hr”来输入一个正则表达式，这会高亮所有符合这个正则表达式的文本。
nmap <silent> <leader>hl <plug>MarkSet
vmap <silent> <leader>hl <plug>MarkSet
nmap <silent> <leader>hh <plug>MarkClear
vmap <silent> <leader>hh <plug>MarkClear
nmap <silent> <leader>hr <plug>MarkRegex
vmap <silent> <leader>hr <plug>MarkRegex
" 你可以在高亮文本上使用“,#”或“,*”来上下搜索高亮文本。在使用了“,#”或“,*”后，就可以直接输入“#”或“*”来继续查找该高亮文本，直到你又用“#”或“*”查找了其它文本。
" <silent>* 当前MarkWord的下一个     <silent># 当前MarkWord的上一个
" <silent>/ 所有MarkWords的下一个    <silent>? 所有MarkWords的上一个
"- default highlightings ------------------------------------------------------
highlight def MarkWord1  ctermbg=Cyan     ctermfg=Black  guibg=#8CCBEA    guifg=Black
highlight def MarkWord2  ctermbg=Green    ctermfg=Black  guibg=#A4E57E    guifg=Black
highlight def MarkWord3  ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
highlight def MarkWord4  ctermbg=Red      ctermfg=Black  guibg=#FF7272    guifg=Black
highlight def MarkWord5  ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black
highlight def MarkWord6  ctermbg=Blue     ctermfg=Black  guibg=#9999FF    guifg=Black
"}}}


" {{{ plugin – winmove.vim 窗口移动
let g:wm_move_left  = "<a-h>"
let g:wm_move_right = "<a-l>"
let g:wm_move_up    = "<a-k>"
let g:wm_move_down  = "<a-j>"
"}}}


" {{{ plugin – ZenCoding.vim 很酷的插件，HTML代码生成
" 插件最新版：http://github.com/mattn/zencoding-vim
" 常用命令可看：http://nootn.com/blog/Tool/23/
let g:user_zen_settings = {
\    'lang': "zh-cn"
\}
" }}}


" {{{ plugin - auto_mkdir.vim 自动创建目录
" }}}


" {{{ plugin - mru.vim 记录最近打开的文件
let MRU_File = $VIMFILES."/_vim_mru_files"
let MRU_Max_Entries = 1000
let MRU_Add_Menu = 0
nmap <leader>f :MRU<cr>
" }}}


" {{{ plugin - taglist.vim 代码导航

if has("unix")
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
else
    let Tlist_Ctags_Cmd = '"'.$VIMFILES.'/ctags.exe"'
endif
" 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File = 1
" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
" 在右侧窗口中显示taglist窗口
let Tlist_Use_Right_Window = 1

let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_WinWidth = 31
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'
nnoremap <Leader>tl :TlistToggle<CR>
"let g:ctags_path=$VIMFILES.'/ctags.exe'
"let g:ctags_statusline=1
"let g:ctags_args=1
" }}}


" {{{ plugin - NERD_commenter.vim 注释代码用的，以下映射已写在插件中
" <leader>ca 在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
" <leader>cc 注释当前行
" <leader>cs 以”性感”的方式注释
" <leader>cA 在当前行尾添加注释符，并进入Insert模式
" <leader>cu 取消注释
" <leader>cm 添加块注释
" }}}


" {{{ plugin - NERD_tree.vim 文件管理器
" 让Tree把自己给装饰得多姿多彩漂亮点
let NERDChristmasTree=1
" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeAutoCenter=1
" 指定书签文件
let NERDTreeBookmarksFile=$VIMFILES.'\NERDTree_bookmarks'
" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
let NERDTreeMouseMode=2
" 是否默认显示书签列表
let NERDTreeShowBookmarks=1
" 是否默认显示文件
let NERDTreeShowFiles=1
" 是否默认显示隐藏文件
let NERDTreeShowHidden=1
" 是否默认显示行号
let NERDTreeShowLineNumbers=0
" 窗口位置（'left' or 'right'）
let NERDTreeWinPos='left'
" 窗口宽度
let NERDTreeWinSize=31
nnoremap <Leader>tt :NERDTree<CR>
"BufExplorer
nnoremap <Leader>b :BufExplorer<CR>

"}}}

"NeoComplcache
" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0 
" Use neocomplcache. 
let g:neocomplcache_enable_at_startup = 1 
" Use smartcase. 
let g:neocomplcache_enable_smart_case = 1 
" Use camel case completion. 
let g:neocomplcache_enable_camel_case_completion = 1 
" Use underbar completion. 
let g:neocomplcache_enable_underbar_completion = 1 
" Set minimum syntax keyword length. 
let g:neocomplcache_min_syntax_length = 3 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 

" Define dictionary. 
let g:neocomplcache_dictionary_filetype_lists = { 
    \ 'default' : '', 
    \ 'vimshell' : $HOME.'/.vimshell_hist', 
    \ 'scheme' : $HOME.'/.gosh_completions' 
    \ } 

" Define keyword. 
if !exists('g:neocomplcache_keyword_patterns') 
    let g:neocomplcache_keyword_patterns = {} 
endif 
let g:neocomplcache_keyword_patterns['default'] = '\h\w*' 

" Plugin key-mappings. 
imap <C-k>     <Plug>(neocomplcache_snippets_expand) 
smap <C-k>     <Plug>(neocomplcache_snippets_expand) 
inoremap <expr><C-g>     neocomplcache#undo_completion() 
inoremap <expr><C-l>     neocomplcache#complete_common_string() 

" SuperTab like snippets behavior. 
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>" 

" Recommended key-mappings. 
" <CR>: close popup and save indent. 
" <TAB>: completion. 
inoremap <expr>"\<CR>"  neocomplcache#smart_close_popup() . "\<CR>" 
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
" <C-h>, <BS>: close popup and delete backword char. 
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>" 
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>" 
inoremap <expr><C-y>  neocomplcache#close_popup() 
inoremap <expr><C-e>  neocomplcache#cancel_popup() 

" AutoComplPop like behavior. 
"let g:neocomplcache_enable_auto_select = 1 

" Shell like behavior(not recommended). 
"set completeopt+=longest 
"let g:neocomplcache_enable_auto_select = 1 
"let g:neocomplcache_disable_auto_complete = 1 
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>" 
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>" 

" Enable omni completion. 
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 

" Enable heavy omni completion. 
if !exists('g:neocomplcache_omni_patterns') 
let g:neocomplcache_omni_patterns = {} 
endif 
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::' 
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete 
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'


" {{{ plugin - DoxygenToolkit.vim 自动生成各种注释
let g:DoxygenToolkit_authorName="Asins - asinsimple AT gmail DOT com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For Asins\<enter>"
let s:licenseTag = s:licenseTag . "Some right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
map <leader>da :DoxAuthor<cr>
map <leader>df :Dox<cr>
map <leader>db :DoxBlock<cr>
map <leader>dc a /*  */<left><left><left>
" }}}


" {{{ plugin - jsbeautify.vim 优化js代码，并不是简单的缩进，而是整个优化
" 开始优化整个文件
nmap <silent> <leader>js :call g:Jsbeautify()<cr>
" }}}


" {{{ plugin - vimwiki.vim VIM 的wiki
" 对中文用户来说，我们并不怎么需要驼峰英文成为维基词条
let g:vimwiki_camel_case = 0
let g:vimwiki_use_mouse = 1
" 是否在计算字串长度时用特别考虑中文字符
let g:vimwiki_CJK_length = 1
let g:vimwiki_w32_dir_enc = 'utf-8'
let g:vimwiki_list = [{"path": "D:/Asins_data/vimwiki/",
            \ "path_html": "D:/Asins_data/vimwiki/html/",}]
            "\ "html_header": "E:/vimwiki/template/header.tpl",}]
" 标记为完成的 checklist 项目会有特别的颜色
let g:vimwiki_hl_cb_checked = 1
" 我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
let g:vimwiki_menu = ""
" 是否开启按语法折叠  会让文件比较慢
let g:vimwiki_folding = 1
map <leader>wf <plug>VimwikiFollowLink
" }}}

" {{{  plugin - OpenUrl.vim 打开网址
map <leader>op :OpenUrl<CR>

" }}}

" {{{ plugin - Calendar.vim 日历插件
nmap <Leader>ca :Calendar<CR>
let g:calendar_diary="D:\Asins_data\vimwiki\diary"
let g:calendar_smnd = 1
let g:calendar_monday = 1                   " week start with monday.
let g:calendar_weeknm = 1                   " don't work with g:calendar_diary
let g:calendar_mark = 'left-fit'            " let plus(+) near the date, like +8.
"let g:calendar_mruler = '一月,二月,三月,四月,五月,六月,七月,八月,九月,十月,十一月,十二月'
"let g:calendar_wruler = '日 一 二 三 四 五 六'
"let g:calendar_navi_label = '上月,本月,下月'
" }}}


" {{{ plugin - Session.vim 会话记录
"自动载入会话
"let g:session_autoload = 1
"自动保存会话
"let g:session_autosave = 1
set shellquote=
set shellslash
set shellxquote=
set shellpipe=2>&1\|tee
set shellredir=>%s\ 2>&1
let g:session_directory=$VIMFILES
" }}}


" {{{ Win平台下窗口全屏组件 gvimfullscreen.dll
" Alt + Enter 全屏切换
" Shift + t 降低窗口透明度
" Shift + y 加大窗口透明度
" Shift + r 切换Vim是否总在最前面显示
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 0)
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction
    "映射 Alt+Enter 切换全屏vim
    map <a-enter> <esc>:call ToggleFullScreen()<cr>
    "Vim启动的时候自动调用InitVim 以去除Vim的白色边框
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)

    let g:VimAlpha = 240
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction
    "增加Vim窗体的不透明度
    nmap <s-t> <esc>:call SetAlpha(10)<cr>
    "增加Vim窗体的透明度
    nmap <s-y> <esc>:call SetAlpha(-10)<cr>

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "切换Vim是否在最前面显示
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
endif
" }}}


"latex的相关设定
set grepprg=grep\ -nH\ $*
nmap <Leader>lb :!bibtex %:r
let g:Tex_ViewRule_pdf='Skim'
let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleComplieFormats='aux,pdf'
" Octave Syntax 
augroup filetypedetect 
     au! BufRead,BufNewFile *.m setfiletype octave 
augroup END 
" Latex Syntax
autocmd BufWinEnter,BufNewFile * silent tabo
noremap <c-tab> :tabnext<cr>

" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END 

" Use keywords from Octave syntax language file for autocomplete 
if has("autocmd") && exists("+omnifunc") 
   autocmd Filetype octave 
   \	if &omnifunc == "" | 
   \	 setlocal omnifunc=syntaxcomplete#Complete | 
   \	endif 
endif 
" {{{ 颜色显示插件 colorizer.vim
" ,tc 切换高亮
" :ColorHighlight  - start/update highlighting
" :ColorClear      - clear all highlights
" :ColorToggle     - toggle highlights
" }}}
