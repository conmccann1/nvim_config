" neovim config file

call plug#begin('~/.local/share/nvim/plugged')			
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
" use <leader>cc to comment a line (<leader>cu to uncomment)
Plug 'scrooloose/nerdcommenter' 
Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'jpalardy/vim-slime', { 'for': 'python'  }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
call plug#end()


" Plugin Config
source ~/.config/nvim/lsp-config.vim
source ~/.config/nvim/vim-slime.vim
luafile ~/.config/nvim/lua/python-lsp.lua
luafile ~/.config/nvim/lua/compe-config.lua
source ~/.config/nvim/airline.vim

"Remaps
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap jj <Esc>
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>k gt
nnoremap <Leader>j gT


set number
set splitright

