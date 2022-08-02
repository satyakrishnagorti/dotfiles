local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("No lspconfig plugin found")
    return
end

require("lsp.cmp")
require("lsp.configs")
require("lsp.handlers").setup()
require("lsp.null-ls-setup")
