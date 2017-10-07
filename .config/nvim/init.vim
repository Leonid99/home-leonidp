"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/lpodolny/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/lpodolny/dein')
  call dein#begin('/home/lpodolny/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/lpodolny/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('fatih/vim-go')
  call dein#add('sebastianmarkow/deoplete-rust')
  call dein#add('rust-lang/rust.vim')
  call dein#add('vim-syntastic/syntastic.git')
  call dein#add('cespare/vim-toml')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

set incsearch
"set textwidth=120
"set columns=130
"set window=52
"set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
"set winwidth=120
set cindent
"set nowrapscan

"hi DiffAdd term=bold ctermbg=4 guibg=#d6ffb0
"hi DiffChange term=bold ctermbg=5 guibg=#f6e8d0
"hi DiffDelete term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=lightGray guibg=DarkGray
"hi DiffText term=reverse cterm=bold ctermbg=1 gui=bold guibg=#e3c1a5
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
filetype plugin indent on
syntax on

let g:rustfmt_autosave=1

"execute pathogen#infect()

if &diff
"  if exists('neovim_dot_app')
"      call MacToggleFullScreen()
"  endif
  map <tab> ]czz
  map <s-tab> [czz
  set diffopt=filler,context:5000
endif
