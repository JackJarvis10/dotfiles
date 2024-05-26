autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul 
set expandtab 
set tabstop=2 
syntax on 
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