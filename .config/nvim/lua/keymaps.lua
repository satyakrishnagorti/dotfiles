local function bind(op, outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

local nmap = bind("n", { noremap = false })
local nnoremap = bind("n")
local vnoremap = bind("v")
local xnoremap = bind("x")
local inoremap = bind("i")

nnoremap('<C-t>', ':Neotree toggle<cr>')
nnoremap('<C-p>', ':bprev<cr>')
nnoremap('<C-n>', ':bnext<cr>')
nnoremap('<leader><space>', ':Telescope find_files<cr>')
nnoremap(',f', ':Telescope find_files<cr>')
nnoremap(',g', ':Telescope live_grep<cr>')
nnoremap(',b', ':Telescope buffers<cr>')
nnoremap(',h', ':Telescope help_tags<cr>')
nnoremap(',mp', ':Telescope man_pages<cr>')
nnoremap(',q', ':Telescope quickfix<cr>')
nnoremap(',r', ':Telescope registers<cr>')
nnoremap(',n', ':Telescope file_browser<cr>')
