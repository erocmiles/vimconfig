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
  let g:netrw_ftp_cmd="ftp -p"
  set backupdir=~/.vim/backup
endif

if has('win32')
    set backupdir=~/vimfiles/backup
endif
set fileformats=unix,dos
syntax on
