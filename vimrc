" my simple configuration
" ====================================================
" set et
" set ts=2
" set sw=2
" set number
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

" ====================================================
" syntastic default (recommended for beginners) config
" ====================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
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

let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

