-- Neo-Tree
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "Open File Explorer" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Documentation" })
vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })

-- None-ls
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format, { desc = "Format File" })

-- Notifications
vim.keymap.set("n", "<leader>sn", ":Telescope notify<CR>", { desc = "Show Notifications" })

-- Color Schemes
vim.keymap.set("n", "<leader>th", ":Themery<CR>", { desc = "Change Theme" })

-- Buffer Line
vim.api.nvim_set_keymap(
	"n", -- Normal mode
	"<Tab>", -- Keybind
	":BufferLineCycleNext<CR>", -- Command to go to the next tab
	{ noremap = true, silent = true } -- Options: no recursive mapping and silent
)

vim.api.nvim_set_keymap(
	"n", -- Normal mode
	"<S-Tab>", -- Shift + Tab keybind
	":BufferLineCyclePrev<CR>", -- Command to go to the previous buffer
	{ noremap = true, silent = true } -- Options: no recursive mapping and silent
)

-- Incremental Rename
vim.keymap.set("n", "<leader>rn", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { desc = "Rename Variable", expr = true })

function CloseCurrentBufferAndSwitch()
	-- Save the current buffer number
	local current_buf = vim.api.nvim_get_current_buf()

	-- Cycle to the next buffer
	vim.cmd("BufferLineCycleNext")

	-- Close the previously active buffer
	vim.cmd("bdelete " .. current_buf)
end

vim.api.nvim_set_keymap(
	"n",
	"<Leader>x",
	":lua CloseCurrentBufferAndSwitch()<CR>",
	{ desc = "Close Tab", noremap = true, silent = true }
)
