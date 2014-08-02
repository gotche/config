set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" my plugins

" jedi autocomplete
Plugin 'davidhalter/jedi-vim'

" supertab tab for completion
Plugin 'ervandew/supertab'

" file access
Plugin 'kien/ctrlp.vim'

" flake8 the code
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" general config

" Rebind <Leader> key
" " I like to have it here becuase it is easier to reach than the default and
" " it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"ipdb
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" fixes
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:jedi#usages_command = "<leader>u"

" We/I follow pep8 except the line length crazyness
let g:flake8_max_line_length=120

" run flake8 on file after saving
let g:flake8_cmd="/usr/bin/flake8"
autocmd BufWritePost *.py call Flake8()

" remove trailing whitespaces...
autocmd BufWritePre *.py :%s/\s\+$//e

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
