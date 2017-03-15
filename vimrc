set backspace=indent,eol,start
set number
set expandtab
autocmd FileType c,cpp,java,python set tabstop=4 shiftwidth=4
autocmd FileType html,xml,json,css,javascript,typescript set tabstop=2 shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [Vundle]
" The configuration takes advantage from VundleVim to manage plugins. Please 
" refer Quick Start of project site https://github.com/VundleVim/Vundle.vim. 
" Installation:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'matze/vim-move'
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD tree
" The NERD tree allows you to explore your filesystem and to open files and
" directories. It presents the filesystem to you in the form of a tree which
" you manipulate with the keyboard and/or mouse. It also allows you to perform
" simple filesystem operations.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SOLARIZED COLORSCHEME FOR VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'altercation/vim-colors-solarized'
syntax enable
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-AIRLINE and THEMES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_powerline_fonts=1
let g:solarized_termtrans=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
map <C-h> :bp<CR>
map <C-l> :bn<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAGBAR A CLASS OUTLINE VIEWER FOR VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'majutsushi/tagbar'
nmap <C-t> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD COMMENTER
" Comment functions so powerful - no comment necessary.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdcommenter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRLP.VIM
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/temp/*,*/target/*,*/node_modules/*,*/__pycache__/*,*.pyc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
" Syntax checking hacks for vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_post_args='--ignore=E121,E122,E123,E124,E125,E126,E127,E128,E241'
let g:syntastic_typescript_checkers=['tsuquyomi']
let g:syntastic_mode_map={"mode": "active","passive_filetypes":["html"]}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" typescript-vim
" Typescript syntax files for Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'leafgarland/typescript-vim'
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EMMET-VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'mattn/emmet-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-autoformat
" Format code with one button press.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Chiel92/vim-autoformat'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TSUQUYOMI
" Make your Vim a TypeScript IDE.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'shougo/vimproc.vim'
Plugin 'quramy/tsuquyomi'
let g:tsuquyomi_disable_quickfix=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-JAVACOMPLETE2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'artur-shaik/vim-javacomplete2'
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python-mode
" Python-mode is a vim plugin that helps you to create python code very quickly
" by utilizing libraries including pylint, rope, pydoc, pyflakes, pep8,
" autopep8, pep257 and mccabe for features like static analysis, refactoring, 
" folding, completion, documentation, and more.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'klen/python-mode'
let g:pymode_python = 'python3'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Workaround for SOLARIZED COLORSCHEME FOR VIM need to configure the
" colorshceme after the call vundle#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termcolors=256
colorscheme solarized
