" Plugin install
call plug#begin('~/.vim/plugged')
"Plug '~/.fzf'
"Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
"Plug 'scrooloose/nerdtree'
"Plug '907th/vim-auto-save'
"Plug 'conradirwin/vim-bracketed-paste'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'tpope/vim-surround'
call plug#end()

" Override or Assignment
" let mapleader=","
"set pastetoggle=<F4>
"let mapleader="\<SPACE>"
"nnoremap <SPACE> <Nop>
"nnoremap <Leader>fw :w<CR>
"nnoremap <leader>qq :qa<Enter>
" imap jk <ESC>
inoremap jj <ESC>
inoremap kk <ESC>
inoremap hh <ESC>
" let g:expand_region_use_select_mode = 1
" vmap v <Plug>(expand_region_expand)
" vmap V <Plug>(expand_region_shrink)
" nmap <leader>v :set paste<CR>
" imap <leader>v <ESC>:set paste<CR>a

" toggle hlsearch
"nnoremap <leader>fl :set hlsearch! hlsearch?<CR>

" Plugin settings
"map <C-p> :NERDTreeToggle<CR>
"imap <C-n><C-l> <plug>(fzf-complete-line)
"nnoremap <leader>fs :Lines<Cr>
"nnoremap <leader>ff :Files<Cr>
"nnoremap <leader>fe :History<Cr>
"nnoremap <leader>t :enew<Enter>
"nnoremap <leader>p :tabp<Enter>
"nnoremap <leader>h :bprevious!<Enter>
"nnoremap <leader>j <C-w>p<Enter>
"nnoremap <leader>k <C-w>w<Enter>
"nnoremap <leader>l :bnext!<Enter>
"nnoremap <leader>n :tabn<Enter>
"nnoremap <leader>x :bp <BAR> bd #<Enter>
"
" Tab direct
"map <tab> <C-W><C-W>
"nnoremap <leader>1 :tabn 1<Enter>
"nnoremap <leader>2 :tabn 2<Enter>
"nnoremap <leader>3 :tabn 3<Enter>
"nnoremap <leader>4 :tabn 4<Enter>
"nnoremap <leader>5 :tabn 5<Enter>
"nnoremap <leader>6 :tabn 6<Enter>
"nnoremap <leader>7 :tabn 7<Enter>
"nnoremap <leader>8 :tabn 8<Enter>
"nnoremap <leader>9 :tabn 9<Enter>

" open new empty tab
"nnoremap <C-t> :tabnew<CR>
"inoremap <C-t> <Esc>:tabnew<CR>

" This is the default extra key bindings
"let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"let g:airline#extensions#tabline#enabled=1 
"let g:airline#extensions#tabline#buffer_nr_show=1
"let g:auto_save=1
"let g:auto_save_silent=1

"let g:netrw_liststyle=3
"let g:netrw_browse_split=4

"let g:NERDTreeNodeDelimiter = "\u00a0"

" Global setup
" set termguicolors
syntax on
"filetype plugin indent on
colorscheme gruvbox 
set background=dark

set nu
set ruler
set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set tabstop=4
set shiftwidth=4

set si
set wrap

set hls
set cursorline
" set cursorcolumn

vmap '' :w !pbcopy<CR><CR>

set fileencodings=utf8
autocmd BufNewFile *.java 0r ~/.vim/templates/java.template
