set number relativenumber
filetype plugin indent on
let g:airline_theme='bubblegum'
let g:airline_detect_paste=1

inoremap ( ()<left>
inoremap <expr> ) strpart(getline('.'), col ('.')-1, 1) ==")"  ? "\<Right>" : ") "

inoremap [ []<left>
inoremap <expr> ] strpart(getline('.'), col ('.')-1, 1) =="]" ? "\<Right>" : "] "

inoremap { {}<left>
inoremap {<CR> {<CR>} <ESC>0
inoremap {;<CR> {<CR>}; <ESC>0
inoremap <expr> } strpart(getline('.'), col ('.')-1, 1) =="}" ? "\<Right>" : "} "

inoremap <expr> ' strpart(getline('.'), col ('.')-1, 1) =="\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col ('.')-1, 1) =="\"" ? "\<Right>" : "\"\"<Left>"

if has("syntax")
  syntax on
endif
