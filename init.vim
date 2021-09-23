" neovim config file

call plug#begin('~/.local/share/nvim/plugged')			
" Nice status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Auto finish bracket () {}...
Plug 'jiangmiao/auto-pairs'
" Comment lines, use <leader>cc to comment a line (<leader>cu to uncomment)
Plug 'scrooloose/nerdcommenter' 
" NERDTtree file explorer
Plug 'scrooloose/nerdtree'
" Fold functions etc, zo to open zc to fold
Plug 'tmhedberg/SimpylFold'
" Send code to terminal in tmux
Plug 'jpalardy/vim-slime', { 'for': 'python'  }
" Auto-complete + signature etc..
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'ray-x/lsp_signature.nvim'
call plug#end()


" Plugin Config
source ~/.config/nvim/lsp-config.vim
source ~/.config/nvim/vim-slime.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/nerdtree.vim
luafile ~/.config/nvim/lua/lsp_signature.lua
luafile ~/.config/nvim/lua/python-lsp.lua
luafile ~/.config/nvim/lua/compe-config.lua

"Remaps
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap jj <Esc>
nnoremap <Leader>k gt
nnoremap <Leader>j gT


set number
set splitright
set splitbelow
