-- globals
vim.g.mapleader = " "

-- options
vim.opt.tabstop = 5
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.showmatch = false
vim.opt.background = 'dark'
vim.opt.mouse = 'a'
vim.opt.guifont = 'Literation Mono Powerline:h20'
vim.opt.scrolloff = 8 -- start scrolling if you are lines away from end of page
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.cmdheight = 1
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.splitright = true
vim.opt.splitbelow = true
--vim.opt.colorcolumn='120'
--vim.opt.guicursor=""  need to configure

-- commands
vim.cmd 'colorscheme dracula'
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
