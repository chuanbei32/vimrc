"m:set et sw=4 ts=4 fdm=marker fdl=1 noma:

" base start
" 修改leader键
" let mapleader = ','
" let g:mapleader = ''
" 语法高亮
syntax on
" 设置中文帮助 需要下载中文帮助文件
set helplang=cn
" 256色
set t_Co=256
" 设置状态栏
set laststatus=2
" 不要闪烁
" set novisualbell
" 更改终端中显示的编码
set encoding=utf-8
" 更改写入文件的编码
set fileencoding=utf-8
" 以unix的格式保存文件
set fileformat=unix
" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B
" history存储长度。
set history=2000
" 相对行号
set relativenumber
" 不兼容vi模式。去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible
" 文件在Vim之外修改过，自动重新读入
set autoread
" 设置自动保存内容
set autowrite
" 当前目录随着被编辑文件的改变而改变
set autochdir
" 启动的时候不显示援助索马里儿童的提示
set shortmess=atI
" 取消备份。
set nobackup
set nowritebackup
set noswapfile
" 贴时保持格式
set paste
" 则点击光标不会换,用于复制
set mouse-=a           " 在所有的模式下面打开鼠标。
set selection=exclusive
set selectmode=mouse,key
" 去掉输入错误的提示声音
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set number " 显示行号
set nowrap " 取消换行。
"括号配对情况
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" 高亮search命中的文本。
set hlsearch
" 搜索时忽略大小写
set ignorecase
" 随着键入即时搜索
set incsearch
" 有一个或以上大写字母时仍大小写敏感
set smartcase
" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=syntax
" 在左侧显示折叠的层次
set foldcolumn=0
set tabstop=4 " 设置Tab键的宽度
set shiftwidth=4 " 等同的空格个数
set expandtab " 将Tab自动转化成空格 需要输入真正的Tab键时，使用 Ctrl+V + Tab
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4
" set ai "Auto indent
" set si "Smart indent
" 显示当前的行号列号：
set ruler
"在状态栏显示正在输入的命令
set showcmd
" using j/k 上下滚动,始终在中间
set so=7
set cursorline              " 突出显示当前行
" 突出显示当前列
set cursorcolumn
" 解决插入模式下delete/backspce键失效问题
set backspace=2
" 查找
set ic
set hls
set is
" 自动补全配置
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
" 增强模式中的命令行自动完成操作
set wildmenu
"
set background=light
" base end

" windows start
	" 新建一个窗口，新窗口会放在原有窗口的上方。窗口内显示的内容是原有窗口中的同一个文件。
	noremap <leader>wsp :split <cr>
	" 打开由files指定的文件（可以是一个文件名，也可以是多个），新窗口会放在原有窗口的上方。
	noremap <leader>wspf :split<space>
	" 新建一个窗口，新窗口放在原有窗口的左方。窗口内显示的的内容是原有窗口中的同一个文件。
	noremap <leader>wvp :vsplit<cr>
	" 打开由files指定的文件（可以是一个文件名，也可以是多个），新窗口会放在原有窗口的左方。
	noremap <leader>wvpf :vsplit<space>
	" 新建一个窗口，新窗口会放在原有窗口的上方。但是不显示任何文件。
	noremap <leader>wnp :new<cr>
	" 新建一个窗口，新窗口会放在原有窗口的左方。但是不显示任何文件。
	noremap <leader>wvnp :vnew<cr>
	" 关闭当前光标所在的窗口。
	noremap <leader>wcp :close<cr>
	" 保留当前光标所在的窗口，但是关闭其它所有的窗口。
	noremap <leader>wop :only<cr>
	noremap <leader>wall :wall<cr>
	noremap <leader>wqall :qall<cr>
	noremap <leader>wqall! :qall!<cr>
	noremap <leader>wqall :wqall<cr>
	" 窗口切换
	noremap <leader>ww <c-w><c-w>
	noremap <leader>wh <c-w>h
	noremap <leader>wj <c-w>j
	noremap <leader>wk <c-w>k
	noremap <leader>wl <c-w>l
	noremap <leader>wH <c-w>H
	noremap <leader>wJ <c-w>J
	noremap <leader>wK <c-w>K
	noremap <leader>wL <c-w>L
	" 窗口大小调整
	noremap <leader>wr :resize<space>
	noremap <leader>wvr :vertical resize<space>
	noremap <leader>w= <c-w>+
	noremap <leader>w- <c-w>-
	noremap <leader>wn <c-w>_
	" 窗口重命名
	noremap <leader>f :f<space>
	"
	noremap <leader>n :n<space>
	noremap <leader>e :e#<cr>
" windes end

" tabs start
	" 打开新标签页
	" 在当前页之后打开标签页
	noremap <leader><leader>t :tabnew<space>
	" 在当前页之前打开标签页
	noremap <leader><leader>t- :-tabnew<space>
	" 在首页之前打开标签页
	noremap <leader><leader>t0 :0tabnew<space>
	" 在末页之后打开标签页
	noremap <leader><leader>t9 :$tabnew<space>
    " 在当前页打开标签页
    noremap <leader>te :e<space>
	" 关闭标签页
	" 关闭当前标签页
	noremap <leader>tc :tabc<cr>
	" 关闭所有其它的标签页
	noremap <leader>to :tabo<cr>
	" 列出标签页和它们包含的窗口
	noremap <leader>ts :tabs<cr>
	" 切换标签页
	" 转到下一个标签页。最后一个标签页则回绕到第一个
	noremap <leader>tp :tabp<cr>
	" 转到前一个标签页。首个标签页则回绕到最后一个
	noremap <leader>tn :tabn<cr>
	" 转到第 n 个标签页
	noremap <leader><leader>tn :tabn<space>
	" 转到第一个标签页
	noremap <leader>tf :tabfirst<cr>
	" 转到最后一个标签页
	noremap <leader>tl :tablast<cr>
" tabs end

" buffers start
    " 显示buffer列表
	noremap <leader>bb :buffers<cr>
    " 切换下一个buffer
	noremap <leader>bn :bnext<cr>
    " 切换上一个buffer
	noremap <leader>bp :bprevious<cr>
    " 切换第 n 个 buffer
	noremap <leader>b :b<space>
    " 添加buffer
    noremap <leader><Leader>ba :badd<space>
    " 删除buffer
    noremap <leader><leader>bd :bd<space>
" buffers end

" system map start
	" 通过9跳转到行末尾,0默认跳转到行首
	noremap 9 $
    noremap <leader>0 ^
    nnoremap <leader>5 %
    noremap <leader>4 $
    " 为方便复制，用<F6>开启/关闭行号显示
    nnoremap <F6> :set nonumber!<CR>:set foldcolumn=0<CR>
    " 取消本次搜索高亮
    nnoremap <esc><esc> :noh<cr>
    " F1 废弃这个键,防止调出系统帮助
    noremap <F1> <Esc>"
	" 关闭方向键, 强迫自己用 hjkl
	" map <Left> <Nop>
	" map <Right> <Nop>
	" map <Up> <Nop>
	" map <Down> <Nop>
    " 删除一个换行符
    noremap <leader>j <s-j>
    " 行撤销
    " noremap <leader>u U
    " 还原
    noremap <leader>r <c-r>
    " 当前行头插入
    noremap <leader>i <s-i>
    " 当前行末插入
    noremap <leader>a <s-a>
    " 当前行上插入
    noremap <leader>o <s-o>
    " 右向查找操作
    noremap <leader>f <s-f>
    noremap <leader>t <s-t>
    " 窗口内移动
    noremap <leader>h H
    noremap <leader>m M
    noremap <leader>l L
    noremap <leader>g G
    noremap <leader>w W
    noremap <leader>b B
    noremap <leader>e E
    noremap <leader>ge gE
    noremap <leader>gg G
    " 上滚一行
    noremap <leader><leader>u <c-u>
    " 下滚一行
    noremap <leader><leader>y <c-y>
    " 向前两行
    noremap <leader><leader>f <c-f>
    " 向后两行
    noremap <leader><leader>b <c-b>

" system map end

" pluging {
    call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree' " 文档树
    " Plug 'jistr/vim-nerdtree-tabs'
    " Plug 'Xuyuanp/nerdtree-git-plugin'
    autocmd vimenter * NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
    map <F3> :NERDTreeToggle<CR>
    " let NERDTreeMinimalUI = 1
    " let NERDTreeShowHidden = 1
    let NERDTreeWinSize=35

	let g:NERDTreeDirArrowExpandable = '~'
	let g:NERDTreeDirArrowCollapsible = '~'

    " let g:nerdtree_tabs_open_on_console_startup=1
" 代码，引号，路径自动补全
    Plug 'Valloric/YouCompleteMe'
    Plug 'Raimondi/delimitMate'
    Plug 'ternjs/tern_for_vim'
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
	" 不显示开启vim时检查ycm_extra_conf文件的信息
	let g:ycm_confirm_extra_conf = 0
	" 开启基于tag的补全，可以在这之后添加需要的标签路径
	let g:ycm_collect_identifiers_from_tags_files = 1
	" 开启语义补全
	let g:ycm_seed_identifiers_with_syntax = 1
	"注释和字符串中的文字也会被收入补全
	let g:ycm_collect_identifiers_from_comments_and_strings = 0
	" 输入第 2 个字符开始补全
	let g:ycm_min_num_of_chars_for_completion= 2
	" 禁止缓存匹配项,每次都重新生成匹配项
	let g:ycm_cache_omnifunc=0
	"在注释输入中也能补全
	let g:ycm_complete_in_comments = 1
	"在字符串输入中也能补全
	let g:ycm_complete_in_strings = 1
	"定义快捷健补全
	let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
	let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
	" 设置在下面几种格式的文件上屏蔽ycm
	let g:ycm_filetype_blacklist = {
	      \ 'tagbar' : 1,
	      \ 'qf' : 1,
	      \ 'notes' : 1,
	      \ 'markdown' : 1,
	      \ 'unite' : 1,
	      \ 'text' : 1,
	      \ 'vimwiki' : 1,
	      \ 'pandoc' : 1,
	      \ 'infolog' : 1,
	      \ 'mail' : 1
	      \}
	"设置关健字触发补全
	let g:ycm_semantic_triggers =  {
	    \   'c' : ['->', '.', ' ', '(', '[', '&'],
	    \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
	    \             're!\[.*\]\s'],
	    \   'ocaml' : ['.', '#'],
	    \   'cpp,objcpp' : ['->', '.', '::'],
	    \   'perl' : ['->'],
	    \   'php' : ['->', '::'],
	    \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
	    \   'ruby' : ['.', '::'],
	    \   'lua' : ['.', ':'],
	    \   'erlang' : [':'],
        \   'css': [ 're!^', 're!^\s+', ': ' ],
        \   'scss': [ 're!^', 're!^\s+', ': ' ],
        \   'html': [ '</' ],
	\ }
	let g:ycm_cache_omnifunc = 1
	let g:ycm_use_ultisnips_completer = 1
	"定义函数跟踪快捷健
	nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
    let delimitMate_expand_cr = 1

    " 加强版状态条
    " Plug 'itchyny/lightline.vim'
    " Plug 'Lokaltog/vim-powerline'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

	" let g:lightline = {
	"    \ 'colorscheme': 'powerline',
	"    \ 'active': {
	"    \   'left': [ [ 'mode', 'paste' ],
	"    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
	"    \   'right': [ [ 'lineinfo' ],
	"    \              [ 'percent' ],
	"    \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
	"    \ },
	"    \ 'component_function': {
	"    \   'gitbranch': 'fugitive#head'
	"    \ },
	"    \ }
    " let g:Powerline_symbols = 'fancy'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'default'
    let g:airline_powerline_fonts = 1

    " 语法高亮，检查
    Plug 'sheerun/vim-polyglot'
    Plug 'w0rp/ale'

    let g:ale_linters = {
    	\	'typesript': ['tslint'],
    	\	'javascript': ['eslint'],
    	\	'css': ['stylelint'],
   	\}
    let g:ale_fixers = {
   		\	'typesript': ['tslint'],
   		\	'javascript': ['eslint'],
   		\	'css': ['stylelint'],
    \}

    let g:ale_fix_on_save = 1
    let g:ale_completion_enabled = 1
    let g:ale_sign_column_always = 1
    let g:ale_sign_error = '>>'
    let g:ale_sign_warning = '!'

    nmap <silent> <C-k> <Plug>(ale_previous_wrap)
    nmap <silent> <C-j> <Plug>(ale_next_wrap)

    " 文件，代码搜索，打开最近打开的文件
    Plug 'mileszs/ack.vim'
    Plug 'kien/ctrlp.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    let g:ackprg = "ag --vimgrep"
    cnoreabbrev Ack Ack!
    " nnoremap <Leader>a :Ack!<Space>

    set wildignore+=*/tmp/*,*.so,*.swp,*.zip

    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](node_modules|DS_Store|dist|build|coverage)|(\.(git|hg|svn)$)',
        \ 'file': '\v\.(exe|so|dll)$',
        \ }

    " 代码注释
    Plug 'scrooloose/nerdcommenter'

    let g:NERDSpaceDelims = 1
    let g:NERDDefaultAlign = 'left'
    let g:NERDCustomDelimiters = {
    	\ 'javascript': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' },
    	\ 'less': { 'left': '/*', 'right': '*/' }
    	\ }

    let g:NERDAltDelims_javascript = 1
    let g:NERDDefaultNesting = 1

    " git
    " Plug 'airblade/vim-gitgutter'
    " Plug 'tpope/vim-fugitive'

    " Markdown
    " Plug 'suan/vim-instant-markdown'
    " Plug 'junegunn/goyo.vim'
    " Plug 'iamcco/mathjax-support-for-mkdp'
    " Plug 'iamcco/markdown-preview.vim'
    " Plug 'gabrielelana/vim-markdown'
    " Plug 'joker1007/vim-markdown-quote-syntax'
    " let g:instant_markdown_slow = 1
    " let g:instant_markdown_autostart = 0

    " nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
    " imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
    " nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
    " imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode

    " Emmet
    Plug 'mattn/emmet-vim'
    let g:user_emmet_leader_key='<C-Z>'
    let g:user_emmet_settings = {
   	    \ 'javascript.jsx' : {
    	\ 'extends' : 'jsx',
        \ },
        \ }

    " css3
    Plug 'hail2u/vim-css3-syntax'
    Plug 'ap/vim-css-color'
    Plug 'groenewege/vim-less'
    augroup VimCSS3Syntax
    autocmd!
    autocmd FileType css setlocal iskeyword+=-
    augroup END

    " JavaScript
    Plug 'pangloss/vim-javascript'
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1
    let g:javascript_conceal_function             = "ƒ"
    let g:javascript_conceal_null                 = "ø"
    let g:javascript_conceal_this                 = "@"
    let g:javascript_conceal_return               = "⇚"
    let g:javascript_conceal_undefined            = "¿"
    let g:javascript_conceal_NaN                  = "ℕ"
    let g:javascript_conceal_prototype            = "¶"
    let g:javascript_conceal_static               = "•"
    let g:javascript_conceal_super                = "Ω"
    let g:javascript_conceal_arrow_function       = "⇒"
    let g:javascript_conceal_noarg_arrow_function = "🞅"
    let g:javascript_conceal_underscore_arrow_function = "🞅"
    let javascript_enable_domhtmlcss = 1
    set conceallevel=1

    " js-beautify
    Plug 'maksimr/vim-jsbeautify'
    autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>

    " React
    Plug 'mxw/vim-jsx'
    let g:jsx_ext_required = 0

    " Prettier
    " Plug 'prettier/vim-prettier', {
        " \ 'do': 'yarn install',
      	" \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
    " let g:prettier#config#bracket_spacing = 'true'
    " let g:prettier#config#jsx_bracket_same_line = 'false'
    " let g:prettier#config#trailing_comma = 'es5'
    " let g:prettier#autoformat = 0
    " autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

    " TypeScript
    Plug 'leafgarland/typescript-vim'
    Plug 'HerringtonDarkholme/yats.vim'

    " vimwiki
    " Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
    " map ws :Vimwiki2HTML<CR>
    " map wb :VimwikiAll2HTML<CR>
    " map <Leader>tt <Plug>VimwikiToggleListItem
    " let g:vimwiki_list = [{
    " 	\ 'path': '~/Documents/yourPath',
    "     \ 'path_html': '~/Documents/pathToHtml/',
    "    	\ 'template_path': '~/Documents/pathToTemplate/',
    "    	\ 'template_default': 'index',
    "     \ 'template_ext': '.tpl',
    "     \ 'nested_syntaxes': {
    "         \ 'javascript': 'javascript',
    "     \ }
    "     \ }]

	" Plug 'majutsushi/tagbar' " 标签增强
	" nmap <F8> :TagbarToggle<CR>
	" let g:tagbar_width=35
	" let g:tagbar_autofocus=1
    " autocmd vimenter * TagbarToggle

	Plug 'vim-scripts/taglist.vim'
	"默认打开Taglist
    let Tlist_Sort_Type = "name"    " 按照名称排序
    let Tlist_Auto_Open=1
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
    let Tlist_File_Fold_Auto_Close = 1
    let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
    let Tlist_Compart_Format = 1    " 压缩方式
    let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
    let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
    let Tlist_WinWidth=35 " 宽度
    nnoremap <silent> <F8> :TlistToggle<CR>

    Plug 'Valloric/YouCompleteMe' " 语法提示

    " 配色 背景
    Plug 'flazz/vim-colorschemes'
    Plug 'kmszk/skyhawk'
    Plug 'morhetz/gruvbox'
    Plug 'tomasr/molokai'
    Plug 'ashfinal/vim-colors-violet'
    nnoremap <silent> <Leader>c :call ToggleBackground()<CR>
	function! ToggleBackground()
	    if &background == "light"
	        set background=dark
	    else
	        set background=light
	    endif
	endfunction

    " 盘古之白 中文排版自动规范化 中文文案排版指北
    " Plug 'hotoo/pangu.vim'
    " hotoo/pangu.vim {
    "    autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
    " }

    Plug 'tpope/vim-commentary'

    " 文末多余空白处理
    Plug 'ntpeters/vim-better-whitespace'

    " 多行操作
    Plug 'terryma/vim-multiple-cursors'

    " 代码片段
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    let g:UltiSnipsEditSplit="vertical"

    Plug 'vim-scripts/grep.vim'
    Plug 'vim-scripts/CSApprox'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'Raimondi/delimitMate'
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/syntastic'
    Plug 'Yggdroot/indentLine'
    Plug 'avelino/vim-bootstrap-updater'
    Plug 'sheerun/vim-polyglot'

    " PHP
    " Plug 'StanAngeloff/php.vim'
    " Plug 'rayburgemeestre/phpfolding.vim'
    " Plug '2072/PHP-Indenting-for-VIm'
    " Plug 'arnaud-lb/vim-php-namespace'
    " Plug 'stephpy/vim-php-cs-fixer'
    " Plug 'lvht/phpcd.vim'

    Plug 'xolox/vim-misc'
    " Plug 'xolox/vim-session'
    " :let g:session_autoload = 'no'

    if v:version >= 703
      Plug 'Shougo/vimshell.vim'
    endif

    if v:version >= 704
        " Snippets
        Plug 'SirVer/ultisnips'
    endif

    Plug 'honza/vim-snippets'


    call plug#end()
" plug end

" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

colorscheme violet
