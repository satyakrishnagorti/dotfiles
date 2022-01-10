syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set incsearch
set relativenumber
set hidden
set noshowmatch
set background=dark
set mouse=a
set guifont=Literation\ Mono\ Powerline:h20
set scrolloff=8  " start scrolling if you are lines away from end of page
set signcolumn=yes
set colorcolumn=120

" highlight all on search and no highlight on ESC
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END


call plug#begin('~/.vim/plugged')
    " Common plugins
    Plug 'tpope/vim-fugitive'
    Plug 'vim-utils/vim-man'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-commentary'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-surround'
    " Plug 'dense-analysis/ale'
    Plug 'mhinz/vim-signify'
    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'arzg/vim-colors-xcode'
    Plug 'EdenEast/nightfox.nvim'

    " Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'onsails/lspkind-nvim'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'nvim-lua/lsp-status.nvim'
    Plug 'simrat39/symbols-outline.nvim'

    " Statusline
    Plug 'nvim-lualine/lualine.nvim'

    " Icons
    Plug 'kyazdani42/nvim-web-devicons'

    " Rust
    Plug 'rust-lang/rust.vim'
    Plug 'simrat39/rust-tools.nvim'

    " Debugging
    Plug 'mfussenegger/nvim-dap'


call plug#end()

let mapleader = " "

" colorscheme related
" colorscheme dracula
colorscheme duskfox
" let g:gruvbox_contrast_dark = 'medium'
" let g:airline_theme='onehalfdark'


inoremap jj <Esc>
map <C-t> :NERDTreeToggle<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" setting when attached to detected lsp: see lua/lsp.lua
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
" nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>

" Not using Lspsaga for now as the maintained branch is 
" suported for 0.6 nightly
" Need to change to this when the project gets better
" https://github.com/tami5/lspsaga.nvim
" nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
" xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
" nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>
" nnoremap <silent><space>rn  <cmd>lua require('lspsaga.rename').rename()<CR>
" nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
" nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
" nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>


" nnoremap <leader>ff :GFiles<CR>
" nnoremap <Leader><space> :Files<CR>
" nnoremap <Leader>bb :Buffers<CR>
nnoremap <silent> <leader>/ :Ag<CR>
nnoremap <Leader><space> <cmd>Telescope find_files<cr>

nnoremap ,f <cmd>Telescope find_files<cr>
nnoremap ,g <cmd>Telescope live_grep<cr>
nnoremap ,b <cmd>Telescope buffers<cr>
nnoremap ,h <cmd>Telescope help_tags<cr>
nnoremap ,mp <cmd>Telescope man_pages<cr>
nnoremap ,q <cmd>Telescope quickfix<cr>
nnoremap ,r <cmd>Telescope  registers<cr>
nnoremap ,n <cmd>Telescope file_browser<cr>

nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

" airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#ale#enabled = 1

" ale symbols
" let g:ale_sign_error = '✘'
" let g:ale_sign_warning = '⚠'
" highlight ALEErrorSign ctermbg=NONE ctermfg=red
" highlight ALEWarningSign ctermbg=NONE ctermfg=yellow



lua <<EOF
require("lsp")
require('statusline')
require('treesitter')
EOF
