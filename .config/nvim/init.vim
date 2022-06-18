set nu

filetype plugin indent on
"show existing tab with 4 spaces width"
set tabstop=4
"when indenting with '>', use 4 spaces width"
set shiftwidth=4
"On pressing tab, insert 4 spaces"
set expandtab

set cursorline

hi cursorline cterm=NONE ctermbg=darkblue ctermfg=darkred

hi Cursor guifg=darkred guibg=white
hi iCursor guifg=white guibg=steelblue

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
