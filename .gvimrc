let g:DirDiffExcludes = "CVS,.*.swp" 
let g:DirDiffWindowSize = 14
"
"
" gvimdiff
"
if &diff
" map <space> ]czz
"  map <cr> [czz
  map <silent> <f5> :diffup<cr>
  imap <silent> <f5> <esc>:diffup<cr>a
  map <silent> <f2> :set diffopt^=iwhite<cr>
  map <silent> <s-f2> :set diffopt-=iwhite<cr>
"  cnoremap q qa
"  cnoremap x xa
  set co=165
  exe "normal \<c-w>="
  set noea
  set lines=42
  set guioptions-=rRlL
  set fdm=manual
  "set diffopt+=iwhite
  set wiw=122
  "  set list
endif

set nomousehide

colorscheme morning

"set guifont=Andale\ Mono\ 12
"set guifont=Ubuntu\ Mono\ 13
set guifont=Monofur:h17
"set guifont=Consolas\ 14
