
" enable syntax and plugins (for netrw)
:filetype plugin indent on
"
" Turn syntax highlighting on
:syntax on
" define leader key
:let mapleader = " "

" Search down into subfolders
" Provides tab-completion for all file-related tasks
" use find to see the true power
:set path+=**

" setting some convenient environment variables
:let $RTP=split(&runtimepath, ',')[0]
:let $RC="$HOME/.vim/vimrc"

" enter the current millenium of vim
:set nocompatible



" Display all matching files when we tab complete
:set wildmenu

:set hidden 

"Center screen after we go into insert mode
:set scrolloff=999

:set colorcolumn=80

" No error bell at the end of line
:set noerrorbells

" set line numbers
:set number
" :set relativenumber

" don't wrap text
:set nowrap

" case sensitive searching until I give a capital letter
:set smartcase

" makes tab into spaces
:set tabstop=4
:set shiftwidth=4
:set expandtab
" remove silly .swp files, replace with undodir
:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile

 " enhance searches by going to search word 
:set incsearch
" workaround to fix unwanted highlighting when scrolling for wsl
:set t_ut=

" auto indenting
:filetype indent on 
:set smartindent
:set autoindent
:autocmd BufRead,BufWritePre *.sh normal gg=G

:set backspace=indent,eol,start


" toggle blankspaces for chararcters
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

:set foldmethod=syntax
"keep folds in file (check ~/.vim/view for saved folds) 
" autocmd BufWinLeave *.* mkview
augroup remember_folds
      autocmd!
      autocmd BufWinLeave * mkview "saves current folds  
      autocmd BufWinEnter * silent! loadview "restore your folds
augroup END" autocmd BufWinEnter *.* silent loadview 
" In normal mode, press Space to toggle the current fold open/closed.
" However, if the cursor is not in a fold, move to the right
"  (the default behavior).In addition, with the manual fold method, 
"  you can create a fold by visually selecting some lines, then pressing Space.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" resize windows shortcuts
:nnoremap + :vertical resize +5<CR>
:nnoremap _ :vertical resize -5<CR>
:nnoremap = :resize +5<CR>
:nnoremap - :resize -5<CR>

:imap ;; <Esc>
:nnoremap <Leader>\t :botright vertical terminal<CR>

" Center the screen everytime we go into insert mode
" Switch splits easily 
:nnoremap <c-j> <c-w>j
:nnoremap <c-k> <c-w>k
:nnoremap <c-h> <c-w>h
:nnoremap <c-l> <c-w>l

" clears screen after closing vim to save my neck
au VimLeave * :!clear
