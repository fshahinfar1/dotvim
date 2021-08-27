" my simple configuration
" ====================================================

"  General indention policy
" set et
set ts=4
set sw=4
" ================================

set cc=80
syntax on
filetype plugin indent on

" Color scheme
colorscheme torte

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Show trailling white space
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Load local vimrc
set exrc
set secure

" Remove Trailing White Spaces
map <F3> :%s/\s\+$//e<CR>

" Open file in Mousepad
map <F4> :! mousepad %<CR>

" Automatice Hybrid Line Number
" From: https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Indetion policies
" C
" autocmd BufNewFile,BufRead set ts=8 set sw=8 set noexpandtab
autocmd BufNewFile,BufRead *.c set ts=8 sw=8 noexpandtab
" JS
autocmd BufNewFile,BufRead *.js set ts=2 sw=2 expandtab
" ====================================================

" map <C-K> :pyf /home/alireza/clang-format.py<cr>
" imap <C-K> <c-o>:pyf /home/alireza/clang-format.py<cr>

" map <C-K> :py3f /home/alireza/.vim/clang-format.py<cr>
" imap <C-K> <c-o>:py3f /home/alireza/.vim/clang-format.py<cr>

" ====================================================
" airline config
" ====================================================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_statusline_ontop=1

" Thanks to @sarsanaee
set list
set listchars=tab:>·,extends:>,precedes:<

" netrw config
nmap <C-E> :Vexplore<cr>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
  autocmd VimEnter * :wincmd l
augroup END

" tab config
nmap <C-T> :tabnew<cr>

