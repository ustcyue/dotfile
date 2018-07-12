"let $PYTHONPATH='site_scons:' . $HOME . '/scons/src/engine'

if !has('nvim')
    if $COLORTERM == 'gnome-terminal' || $COLORTERM == 'screen'
        set term=xterm-256color
        set bg=dark
    endif
endif

"set guicursor=
set nocompatible              " be iMproved, required
filetype off                  " required

"let $GIT_SSL_NO_VERIFY = 'true'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'zhykzhykzhyk/scons.vim'

Plugin 'vim-scripts/a.vim'

"Plugin 'bling/vim-airline'

Plugin 'easymotion/vim-easymotion'

Plugin 'solarnz/thrift.vim'

"Plugin 'ervandew/supertab'

Plugin 'rbgrouleff/bclose.vim'

if !has('nvim')
    Plugin 'fholgado/minibufexpl.vim'
endif

"Plugin 'Rip-Rip/clang_complete'

"Plugin 'scrooloose/syntastic'

Plugin 'elzr/vim-json'

"Plugin 'davidhalter/jedi-vim'

Plugin 'burnettk/vim-angular'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

Plugin 'tpope/vim-commentary'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/tpope-vim-abolish'

Plugin 'kchmck/vim-coffee-script'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-vinegar'

Plugin 'jiangmiao/auto-pairs'

Plugin 'scrooloose/nerdcommenter'

Plugin 'python-mode/python-mode'

Plugin 'rakr/vim-two-firewatch'

"let g:syntastic_python_checkers = ['python']

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set backspace=2
set sw=4
set sts=4
set et
set hidden

set wildmode=list:longest,full

"let g:clang_library_path='/usr/lib/llvm-3.4/lib/libclang.so.1'
"let g:syntastic_cpp_compiler='clang++'
"let g:clang_library_path='/home/ykzhang/pkg/lib/libclang.so'
"let g:syntastic_cpp_compiler_options='-isystem /usr/include/python2.7 -isystem /usr/include/libxml2/ -I /home/ykzhang/ficusclean -isystem /home/ykzhang/ficusclean/external/caffe_dep/include -isystem /home/ykzhang/ficusclean/external/gtest/include/ -isystem /home/ykzhang/ficusclean/external/gperftool/src/ -isystem /home/ykzhang/ficusclean/external/protobuf/src/ -isystem /home/ykzhang/ficusclean/external/jsoncpp/ -isystem /home/ykzhang/ficusclean/external/tinyxml/ -isystem /home/ykzhang/ficusclean/external/image/ -isystem /home/ykzhang/ficusclean/external/machine_learning/ -isystem /home/ykzhang/ficusclean/external/hash/ -isystem /home/ykzhang/ficusclean/external/sentinel_key/ -isystem /home/ykzhang/ficusclean/external/opencv/ -isystem /home/ykzhang/ficusclean/external/opencv/opencv/ -isystem /home/ykzhang/ficusclean/external/opencv_npp/ -isystem /home/ykzhang/ficusclean/external/loransac/ -isystem /home/ykzhang/ficusclean/external/mongoclient/include -isystem /home/ykzhang/ficusclean/external/thrift/thrift/lib/cpp/src/ -isystem /home/ykzhang/ficusclean/external/libevent/libevent-2.0.21-stable/ -isystem /home/ykzhang/ficusclean/external/mysql/include/ -isystem /home/ykzhang/ficusclean/external/gzstream -isystem /home/ykzhang/ficusclean/external/mongoose -isystem /home/ykzhang/ficusclean/external/eigen/ -isystem /home/ykzhang/ficusclean/external/decoders/kddecoder/ -isystem /home/ykzhang/ficusclean/external/decoders/hkdecoder/ -isystem /home/ykzhang/ficusclean/external/scribe/gen-cpp/ -isystem /home/ykzhang/ficusclean/external/libkafka/lib -isystem /home/ykzhang/ficusclean/external/googlemock/include -isystem /usr/include/freetype2/ -isystem /usr/include/oracle/11.2/client64/ -isystem /home/ykzhang/ficusclean/external/machine_learning/caffe/ -Wall -Wno-reorder -std=c++14 -DCPU_ONLY -Wno-unknown-pragmas'
let g:syntastic_cpp_compiler_options='-isystem /usr/include/python2.7 -isystem /usr/include/libxml2/ -I /home/ykzhang/ficus -isystem /home/ykzhang/ficus/external/caffe_dep/include -isystem /home/ykzhang/ficus/external/gtest/include/ -isystem /home/ykzhang/ficus/external/gperftool/src/ -isystem /home/ykzhang/ficus/external/protobuf/src/ -isystem /home/ykzhang/ficus/external/jsoncpp/ -isystem /home/ykzhang/ficus/external/tinyxml/ -isystem /home/ykzhang/ficus/external/image/ -isystem /home/ykzhang/ficus/external/machine_learning/ -isystem /home/ykzhang/ficus/external/hash/ -isystem /home/ykzhang/ficus/external/sentinel_key/ -isystem /home/ykzhang/ficus/external/opencv/ -isystem /home/ykzhang/ficus/external/opencv/opencv/ -isystem /home/ykzhang/ficus/external/opencv_npp/ -isystem /home/ykzhang/ficus/external/loransac/ -isystem /home/ykzhang/ficus/external/mongoclient/include -isystem /home/ykzhang/ficus/external/thrift/thrift/lib/cpp/src/ -isystem /home/ykzhang/ficus/external/libevent/libevent-2.0.21-stable/ -isystem /home/ykzhang/ficus/external/mysql/include/ -isystem /home/ykzhang/ficus/external/gzstream -isystem /home/ykzhang/ficus/external/mongoose -isystem /home/ykzhang/ficus/external/eigen/ -isystem /home/ykzhang/ficus/external/decoders/kddecoder/ -isystem /home/ykzhang/ficus/external/decoders/hkdecoder/ -isystem /home/ykzhang/ficus/external/scribe/gen-cpp/ -isystem /home/ykzhang/ficus/external/libkafka/lib -isystem /home/ykzhang/ficus/external/googlemock/gmock-1.6.0/include/ -isystem /usr/include/freetype2/ -isystem /usr/include/oracle/11.2/client64/ -isystem /home/ykzhang/ficus/external/machine_learning/caffe/ -Wall -Wno-reorder -std=c++14 -DCPU_ONLY -Wno-unknown-pragmas'
let g:syntastic_auto_loc_list = 1
"set makeprg=scons\ -uj80\ --distributed\ --verify-libdeps
set mouse=a
set fileencodings=ucs-bom,utf-8,gbk,latin1

set cinoptions=l0,g0,t0,is,+2s,(0,w0.5s,W2s,N-s

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>f :YcmCompleter FixIt<CR>
highlight ExtraWhitespace ctermbg=red guibg=red

let g:ycm_disable_for_files_larger_than_kb=1600
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='home/xnyue/.ycm_extra_conf.py'

if has('nvim')
    let g:airline#extensions#tabline#enabled=1
endif

if has('nvim')
    tnoremap <C-W> <C-\><C-N><C-W>
    tnoremap <ESC>: <C-\><C-N>:

    autocmd BufEnter * if &buftype == 'terminal' | startinsert | endif
endif

let g:ycm_always_populate_location_list = 1

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_theme='base16'
command VTerm vert bo term

color elflord

set path+=/home/xnyue/test/ficus
imap jj  <ESC>
set nu
set ignorecase
set smartcase
set clipboard=unnamed
set hlsearch
set noswapfile
set nobackup
set nowb

set undofile
set undodir=~/.vim/back_up/
 
let g:pymode_options_max_line_length = 180
let g:pymode_options_colorcolumn = 1
let g:pymode_folding = 0
set diffopt+=vertical

