execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd FileType yaml setlocal ai et ts=2 sts=2 sw=2 cuc expandtab

set foldlevelstart=20

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

"" replace tabs with spaces in YAML files
let @r = ':%retab|'
"" remove trailing spaces
let @t = ':%s/\s\+$//e'

colo peachpuff 
set ignorecase 
set smartcase 
set number 
set hlsearch 
set incsearch 
"disable arrow keys (vim muscle memory) 
noremap <up> :echoerr "Umm, use k instead"<CR> 
noremap <down> :echoerr "Umm, use j instead"<CR> 
noremap <left> :echoerr "Umm, use h instead"<CR> 
noremap <right> :echoerr "Umm, use l instead"<CR> 
cnoremap w= w !sudo tee /dev/null % 
