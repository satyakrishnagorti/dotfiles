local M = {}

vim.g.mapleader = " "

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


-- Image Pasting
nnoremap("<leader>p", "<CMD>PasteImage<CR>", { desc = "Paste clipboard image" })

-- DAP
_G.dap = require("dap")
nnoremap("<leader>dc", "<CMD>lua dap.continue()<CR>")
nnoremap("<leader>n", "<CMD>lua dap.step_over()<CR>")
nnoremap("<leader>si", "<CMD>lua dap.step_into()<CR>")
nnoremap("<leader>so", "<CMD>lua dap.step_out()<CR>")
nnoremap("<leader>tb", "<CMD>lua dap.toggle_breakpoint()<CR>")
nnoremap("<leader>dq", "<CMD>lua dap.disconnect({ terminateDebuggee = true })<CR>")

-- Trouble
nnoremap("<leader>tr", "<CMD>TroubleToggle lsp_references<CR>")
nnoremap("<leader>td", "<CMD>TroubleToggle lsp_definitions<CR>")
nnoremap("<leader>cd", "<CMD>TroubleToggle<CR>")

--ZenMode
nnoremap("<leader>zm", "<CMD>ZenMode<CR>")

--NeoTree
nnoremap("<C-t>", "<CMD>Neotree toggle<CR>")
nnoremap("<leader>nf", "<CMD>Neotree reveal float<CR>")

-- Aerial
nnoremap("<leader>at", "<CMD>AerialToggle<CR>")

-- Telescope
-- nnoremap("<leader><space>", "<CMD>Telescope git_files hidden=true<CR>", { desc = "Telescope Find Files" })
nnoremap("<leader><space>", "<CMD>Telescope find_files<CR>", { desc = "Telescope Find Files" })
nnoremap(",f", "<CMD>Telescope find_files<CR>")
nnoremap(",g", "<CMD>Telescope live_grep<CR>")
nnoremap(",b", "<CMD>Telescope buffers<CR>")
nnoremap(',h', ':Telescope help_tags<cr>')
nnoremap(',mp', ':Telescope man_pages<cr>')
nnoremap(',q', ':Telescope quickfix<cr>')
nnoremap(',r', ':Telescope registers<cr>')
nnoremap(',n', ':Telescope file_browser<cr>')
nnoremap(",fa", "<CMD>Telescope aerial<CR>")

-- buffers
nnoremap('<C-p>', ':bprev<cr>')
nnoremap('<C-n>', ':bnext<cr>')

-- notify
nnoremap("<leader>dn", "<CMD>lua require('notify').dismiss()<CR>")

-- LSP
_G.buf = vim.lsp.buf
nnoremap("rg", ":%s/<C-r><C-w>//g<Left><Left>", { desc = "global substitution" }) -- lsp agnostic global rename
nnoremap("gd", "<CMD>lua buf.definition()<CR>")
nnoremap("gD", "<CMD>lua buf.declaration<CR>")
nnoremap("K", "<CMD>lua buf.hover()<CR>")
nnoremap("gi", "<CMD>lua buf.implementation()<CR>")
nnoremap("gr", "<CMD>Telescope lsp_references<CR>")
nnoremap("sh", "<CMD>lua buf.signature_help()<CR>")
nnoremap("<leader>rn", "<CMD>lua buf.rename()<CR>")
nnoremap("<leader>ca", "<CMD>lua buf.code_action()<CR>")


-- gitsigns
M.gitsigns = function()
    local gs = package.loaded.gitsigns
    nnoremap("<leader>hs", gs.stage_hunk, { desc = "stage hunk" })
    nnoremap("<leader>hr", gs.reset_hunk, { desc = "reset hunk" })
    nnoremap("<leader>hS", gs.stage_buffer, { desc = "stage buffer" })
    nnoremap("<leader>hu", gs.undo_stage_hunk, { desc = "undo stage hunk" })
    nnoremap("<leader>hR", gs.reset_buffer, { desc = "reset buffer" })
    nnoremap("<leader>hp", gs.preview_hunk, { desc = "preview hunk" })
    nnoremap("<leader>hb", function()
       gs.blame_line({ full = true })
    end, { desc = "complete blame line history" })
    nnoremap("<leader>lb", gs.toggle_current_line_blame, { desc = "toggle blame line" })
    -- diff at current working directory
    nnoremap("<leader>hd", gs.diffthis, { desc = "diff at cwd" })
    -- diff at root of git repository
    nnoremap("<leader>hD", function()
       gs.diffthis("~")
    end, { desc = "diff at root of git repo" })
    nnoremap("<leader>td", gs.toggle_deleted, { desc = "toggle deleted line" })
end


return M
