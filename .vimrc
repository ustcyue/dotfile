set ttyfast
set mouse=a
set ttymouse=sgr
set wildmenu
set wildmode=list:longest,full
set nocompatible
set ignorecase
set smartcase

set number
imap   <Left><Del>
imap jj  <ESC>
set autoindent
set tabstop=4
set sw=4
filetype indent on
set expandtab
set clipboard=unnamed
set hlsearch
set guifont=Monospace\ 13
filetype plugin on
"nmap <F8> :TlistToggle<CR>
let g:NERDTree_title="[NERDTree]" 
function! NERDTree_Start()
    exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
   return 1
endfunction
let g:winManagerWindowLayout='NERDTree'
let g:persistentBehaviour=0
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Auto_Update=1
let Tlist_Show_One_File = 1
set tags=tags;
set autochdir
nmap <Leader>t :TagbarToggle<CR>        
let g:tagbar_width=30                    
map <F3> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

set completeopt-=preview
let g:go_fmt_command = "goimports"
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
let g:neocomplcache_enable_at_startup=0
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
set t_Co=256
set laststatus=2

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_theme='base16'

"let g:CommandTTraverseSCM='file'
"let g:CommandTSCMDirectories='README.md'
"let g:CommandTCursorColor='StatusLine'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git']
set makeprg=make
"set cursorline
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"inoremap ( ()<Esc>:let leavechar=")"<CR>i
"inoremap [ []<Esc>:let leavechar="]"<CR>i
"inoremap { {}<Esc>:let leavechar="}"<CR>i
"inoremap " ""<Esc>:let leavechar="""<CR>i
"inoremap ' ''<Esc>:let leavechar="'"<CR>i
"imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
"if !exists('g:neocomplcache_force_omni_patterns')
    "let g:neocomplcache_force_omni_patterns = {}
"endif
"let g:neocomplcache_force_omni_patterns.go = '\h\w*\.\?'
set noswapfile
set nobackup
set nowb

set undofile
set undodir=~/.vim/back_up/

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }


call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'rakr/vim-one'
Plug 'rakr/vim-two-firewatch'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-vinegar'
Plug 'SirVer/ultisnips'
Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'fholgado/minibufexpl.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/SQLUtilities'
Plug 'jphustman/align.vim'
call plug#end()

let python_highlight_all = 1
let g:syntastic_python_checkers = ['python']

if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ackhighlight = 1

syntax on
set background=dark
colorscheme two-firewatch
if has("termguicolors") && !has('gui_running')
  set termguicolors
endif
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
" A optimally distinct colors http://tools.medialab.sciences-po.fr/iwanthue/
let g:semanticGUIColors = ['#A7C575', '#BDBDE4', '#E0ED85', '#E9C5E3', '#CAF19B', '#E9A9BB',
            \'#9BDE9D', '#F4A091', '#89EEE4', '#E1A46A', '#97DBE2', '#E2B964',
            \'#C4DBEC', '#D7CC71', '#B2C4CC', '#F1A87F', '#8EE9CA', '#E7C183',
            \'#7CC9BC', '#E9B7A2', '#87DCB0', '#CEB7B5', '#CDF8C9', '#CAB996',
            \'#97C19A', '#F5E2A8', '#B3D2BF', '#C6C989', '#E6E3CC', '#C2DDAA',
            \'#B4BC9F', '#E6E5B2']
" Cache color values across files
let g:semanticUseCache = 1
" Cache color values across sessions
let g:semanticPersistCache = 1
" Activate automatically for certain filetypes
let g:semanticEnableFileTypes = {
            \   'javascript' : 'js',
            \   'coffee'     : 'coffee',
            \   'ruby'       : 'ruby',
            \   'elixir'     : 'elixir',
            \   'python'     : 'py',
            \   'go'         : 'go',
            \   'scala'      : 'scala',
            \   'sbt'        : 'sbt',
            \ }
" Add backlists item in Golang
let g:semanticBlacklistOverride = {
            \ 'go': [
            \   'break',    'default',     'func',   'interface', 'select',
            \   'case',     'defer',       'go',     'map',       'struct',
            \   'chan',     'else',        'goto',   'package',   'switch',
            \   'const',    'fallthrough', 'if',     'range',     'type',
            \   'continue', 'for',         'import', 'return',    'var',
            \ ]}
if exists("SemanticHighlight")
    autocmd! BufWritePre *.go :SemanticHighlight
endif
let g:ycm_key_list_select_completion = ['<Down>']
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap Q @q
vnoremap . :normal .<CR>
vnoremap Q :normal @q<CR>

let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_rope_goto_definition_cmd = 'e'

let g:pymode_options_max_line_length = 180
let g:pymode_options_colorcolumn = 1
let g:pymode_folding = 0
set diffopt+=vertical
autocmd QuickFixCmdPost *grep* cwindow
