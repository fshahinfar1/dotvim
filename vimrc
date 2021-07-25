" my simple configuration
" ====================================================

"  General indention policy
set et
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
" autocmd BufNewFile,BufRead *.c set ts=8 sw=8 noexpandtab
" autocmd BufNewFile,BufRead *.c nnoremap <C-p> :s/\(^\s*\)/\1\/\/ <cr>
" autocmd BufNewFile,BufRead *.c nnoremap <C-o> :s/\(^\s*\/\/ \)/<cr>
" autocmd BufNewFile,BufRead *.c vnoremap <C-p> :s/\(^\s*\)/\1\/\/ <cr>
" autocmd BufNewFile,BufRead *.c vnoremap <C-o> :s/\(^\s*\/\/ \)/<cr>
" " Bash
" autocmd BufNewFile,BufRead *.sh set ts=2  sw=2 noexpandtab
" autocmd BufNewFile,BufRead *.sh nnoremap <C-p> :s/\(^\s*\)/\1# <cr>
" autocmd BufNewFile,BufRead *.sh nnoremap <C-o> :s/\(^\s*# \)/<cr>
" autocmd BufNewFile,BufRead *.sh vnoremap <C-p> :s/\(^\s*\)/\1# <cr>
" autocmd BufNewFile,BufRead *.sh vnoremap <C-o> :s/\(^\s*# \)/<cr>

" ====================================================

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

