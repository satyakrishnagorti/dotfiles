local M = {}

vim_opts = function(options)
    if options ~= nil then
        for scope, table in pairs(options) do
            for setting, value in pairs(table) do
                vim[scope][setting] = value
            end
        end
    end
end

vim_opts({
    opt = {
        tabstop = 5,
        softtabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        smartindent = true,
        nu = true,
        wrap = false,
        smartcase = true,
        incsearch = true,
        relativenumber = true,
        hidden = true,
        showmatch = false,
        background = 'dark',
        mouse = 'a',
        guifont = 'Literation Mono Powerline:h20',
        scrolloff = 8, -- start scrolling if you are lines away from end of page
        signcolumn = 'yes',
        termguicolors = true,
        updatetime = 50,
        cmdheight = 1,
        hlsearch = false,
        incsearch = true,
        splitright = true,
        splitbelow = true,
    },
    g = {
        mapleader = " ",
    }
})

return M
