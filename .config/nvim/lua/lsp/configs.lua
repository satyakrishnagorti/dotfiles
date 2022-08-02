local lsp_installer = require('nvim-lsp-installer')
local lspconfig = require("lspconfig")

local servers = { 'sumneko_lua', 'rust_analyzer', 'pyright', 'zls', 'tsserver'}

lsp_installer.setup({
	ensure_installed = servers,
})

local sumneko_lua_opts = {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
		  },
            workspace = {
                library = {
                     [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                     [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
	   },
    },
}


for _, server in pairs(servers) do
	local opts = {
		on_attach = require("lsp.handlers").on_attach,
		capabilities = require("lsp.handlers").capabilities,
	}
	if server == "sumneko_lua" then
		opts = vim.tbl_deep_extend("force", opts, sumneko_lua_opts)
	end

     -- if server == "rust-analyizer" then

     -- end
	lspconfig[server].setup(opts)
end

