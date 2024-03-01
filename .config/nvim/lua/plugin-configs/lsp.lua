local lsp = require("lsp-zero")
lsp.preset("minimal")

lsp.set_sign_icons({
	error = "✘",
	warn = "▲",
	hint = "⚑",
	info = "»",
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}
local exist, user_config = pcall(require, "user.user_config")
local group = exist and type(user_config) == "table" and user_config.enable_plugins or {}

-- TODO test autosaving feature
-- if not require("core.utils.utils").enabled(group, "autosave") then
-- 	lsp.format_on_save({
-- 		format_opts = {
-- 			async = false,
-- 			timeout_ms = 10000,
-- 		},
-- 		servers = require("user.user_config").formatting_servers,
-- 	})
-- end
lsp.setup()
