runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set nowrap
set nu!
set langmenu=en_US
let $LANG = 'en_US'
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set diffexpr=MyDiff()
set expandtab
set tabstop=4
set shiftwidth=4
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_
set list
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
if !has('win32')
  silent execute "!mkdir ~/backup > /dev/null 2>&1"
  silent execute "!mkdir ~/swap > /dev/null 2>&1"
  let g:netrw_ftp_cmd="ftp -p"
  set backupdir=~/backup
  set directory=~/swap
  set undodir=~/backup " where to save undo histories
  silent execute "!rm ~/swap/* > /dev/null 2>&1"
endif

if has('win32')
    silent execute '!mkdir "~/backup"'
    silent execute '!mkdir "~/swap"'
    set backupdir=~/backup
    set directory=~/swap
    set undodir=~/backup " where to save undo histories
    silent execute '!del "~/swap/*"'
endif
set fileformats=unix,dos
set nobackup
set nowritebackup
if has('gui_running')
  set guifont=Consolas:h10
endif
nmap ; :
set undofile                " Save undo's after file closes
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
