" use vim-plug for plugins.
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

" in command mode, input NeoFormat to auto-format source code
Plug 'sbdchd/neoformat'

" use <leader>cc to comment a line (<leader>cu to uncomment)
Plug 'scrooloose/nerdcommenter' 

Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'

" :AsyncRun python  "%'  
Plug 'skywind3000/asyncrun.vim'

Plug 'jpalardy/vim-slime', { 'for': 'python'  }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python'  }

" coq.nvim
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

call plug#end()


" Plugin Settings
" deoplete
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:deoplete#enable_at_startup = 1


" vim-slime
let g:slime_target = "tmux"

let g:slime_paste_file = "$HOME/.slime_paste"

" fix paste issues in ipython
let g:slime_python_ipython = 1

" always send text to the top-right pane in the current tmux tab without asking
"let g:slime_default_config = {
"	\ 'socket_name': get(split($TMUX, ','), 0),
"	\ 'target_pane': '{top-right}'}

let g:slime_default_config = {
	\ 'socket_name': 'default',
	\ 'target_pane': 'slime_out.0'}

let g:slime_dont_ask_default = 1


" coq.vim
let g:coq_settings = {'auto_start': 'shut-up' }

set number

"Remaps
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap jj <Esc>
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>k gt
nnoremap <Leader>j gT


"airline
let g:airline_theme='<deus>'

" Async
let g:asyncrun_open = 6


set splitright
set splitbelow


augroup python_file
	autocmd!
	autocmd FileType python nnoremap <F9> :AsyncRun python3 -u "%"<CR>
augroup END
