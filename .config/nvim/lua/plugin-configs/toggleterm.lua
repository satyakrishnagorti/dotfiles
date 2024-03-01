local create_floating_terminal = function(term, cmd)
	local instance = nil
	if vim.fn.executable(cmd) == 1 then
		local terminal = term.Terminal
		instance = terminal:new({
			cmd = cmd,
			dir = "git_dir",
			direction = "float",
			float_opts = {
				border = "double",
			},
			on_open = function()
				vim.cmd("startinsert!")
			end,
			on_close = function()
				vim.cmd("startinsert!")
			end,
		})
	end
	-- check if TermExec function exists
	return function()
		if vim.fn.executable(cmd) == 1 and instance ~= nil then
			instance:toggle()
		else
			vim.notify("Command not found: " .. cmd .. ". Ensure it is installed.", "error")
		end
	end
end


require("toggleterm").setup({
	open_mapping = [[<c-\>]],
	on_open = function(_term)
		vim.cmd("startinsert!")
	end,
	on_close = function(_term)
		vim.cmd("startinsert!")
	end,
	size = 25,
	direction = "tab",
	float_opts = {
		border = "curved",
		winblend = 6,
	},
})

local term = require("toggleterm.terminal")

local M = {}

M.lazygit_toggle = create_floating_terminal(term, "lazygit")
M.gdu_toggle = create_floating_terminal(term, "gdu")
M.bashtop_toggle = create_floating_terminal(term, "bashtop")

return M
