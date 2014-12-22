" show line numbers
set number

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

map <F2> :NERDTree<CR>
map <F1> <C-W><C-W>
map - :vertical resize -5<CR>
map + :vertical resize +5<CR>

" vim pathogen
execute pathogen#infect()
