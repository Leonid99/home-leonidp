au BufNewFile,BufRead SCons* set filetype=scons

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

set incsearch
set textwidth=120
set columns=130
set window=52
"set tabstop=8
set shiftwidth=8
set softtabstop=8
set expandtab
set winwidth=120
set cindent
"set nowrapscan

hi DiffAdd term=bold ctermbg=4 guibg=#d6ffb0
hi DiffChange term=bold ctermbg=5 guibg=#f6e8d0
hi DiffDelete term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=lightGray guibg=DarkGray
hi DiffText term=reverse cterm=bold ctermbg=1 gui=bold guibg=#e3c1a5
filetype plugin indent on
syntax on

"execute pathogen#infect()

if &diff
  map <tab> ]czz
  map <s-tab> [czz
  set diffopt=filler,context:5000
endif
