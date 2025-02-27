vim.opt.termguicolors = true

-- General Settings
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.tabstop = 4      -- Number of spaces that a tab represents
vim.opt.softtabstop = 4  -- Number of spaces for Tab and Backspace
vim.opt.shiftwidth = 4   -- Number of spaces for autoindent

-- Set tab width to 2 for javascript and typescript files
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact", "html", "css" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.cursorline = true         -- Highlight the current line
vim.opt.wrap = false              -- Disable line wrapping
vim.opt.scrolloff = 5             -- Keep 5 lines of context around the cursor

-- Cursor Settings
vim.opt.guicursor = {
    "n-v-c:block-blinkwait700-blinkoff400-blinkon250", -- Block cursor in normal/visual modes
    "i:hor20-blinkwait700-blinkoff400-blinkon250",  -- Horizontal underline in insert mode
}

-- Line Numbering
vim.wo.relativenumber = true -- Show relative line numbers
vim.wo.number = true         -- Show absolute line number for the current line

-- Leader Key
vim.g.mapleader = " " -- Set space as the leader key

-- Keymaps
vim.keymap.set("n", ";", ":", {}) -- Remap ; to : in normal mode
