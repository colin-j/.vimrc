
if has("gui_running")
	colorscheme solarized
else
	colorscheme solarized
endif

set guifont=Droid\ Sans\ Mono:h12

set visualbell

" case insensitive search
set ignorecase
set hlsearch
set incsearch

" display matching brackets
set showmatch
" display matching brackets for 4/10 seconds
set mat=4

set noexpandtab
set smarttab

set shiftwidth=4
set tabstop=4
set softtabstop=4

set scrolloff=4

set autoindent
set smartindent

set number
set ruler

set wildmode=longest,list,full
set wildmenu

" don't act like vi
set nocompatible

" show whitespace characters
set listchars=eol:●,tab:⁘▸,trail:⎕,extends:>,precedes:<
set list

" make backspace work as expected, allowing backspace to delete past indentations, line breaks, and insert start points
set backspace=indent,eol,start

" ====== vim-force.com settings ======
let &runtimepath=&runtimepath . ',~/.vim/vim-force.com'
filetype plugin on
syntax on

let &runtimepath=&runtimepath . ',~/.vim/vim-force.com'
" make sure vim loads apexcode filetype detection
runtime ftdetect/vim-force.com.vim

let g:apex_tooling_force_dot_com_path = "/Users/cjarvis/lib/tooling-force.com-0.3.6.4.jar"
if !exists("g:apex_backup_folder")
  let g:apex_backup_folder = "/Users/cjarvis/.vim-force-com/apex-backup"
endif
if !exists("g:apex_temp_folder")
  let g:apex_temp_folder = "/Users/cjarvis/.vim-force-com/apex-deployment"
endif
if !exists("g:apex_properties_folder")
  let g:apex_properties_folder="/Users/cjarvis/.vim-force-com/secure-properties"
endif

let g:apex_API_version="39.0"

set autowrite " not strictly required, but without it you will be getting
               " errors when running commands that open new buffer 
               "         " (e.g. :ApexQuery or :ApexExecuteAnonymous) on
               "         unsaved file

let g:apex_server_timeoutSec=60*30 " allow server to wait for new connections within 30 minutes

set exrc

" highlight unwanted/excess whitespace
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$\|^ \+/
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

set secure

