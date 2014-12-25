" show line numbers
set number

" enable statusline
set laststatus=2

set statusline=%t " filename
set statusline+=\ (%{&ff}) " fileformat
set statusline+=\ %4l/%L\ %3c " cursor position, current line/nr. of lines

" one tab is equals four spaces
set tabstop=4
set shiftwidth=4
set expandtab

" highlight search results
set hlsearch

" search as you type
set incsearch

" case insensitive search
set ignorecase

" enable syntax highlighting
syntax on

set background=dark

" vim pathogen
execute pathogen#infect()

highlight ExtraWhitespace ctermbg=red guibg=red

" highlight trailing spaces
call matchadd("ExtraWhitespace", "\\s\\+$")

" highlight tabs
call matchadd("ExtraWhitespace", "\\t")

nnoremap <F2> :NERDTree<CR>
nnoremap <F1> <C-W><C-W>
nnoremap - :vertical resize -5<CR>
nnoremap + :vertical resize +5<CR>

" blockwise indent
xnoremap <TAB> >gv
xnoremap <S-TAB> <gv

function RemoveTrailingWhitespace()
    if !&binary
        normal! mz
        %s/\s\+$//ge
        normal! 'z
    endif
endfunction

autocmd BufWritePre * :call RemoveTrailingWhitespace()
autocmd BufWritePre * :retab
