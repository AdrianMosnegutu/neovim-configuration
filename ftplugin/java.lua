local jdtls = require("jdtls")

vim.keymap.set("n", "<leader>Jo", jdtls.organize_imports, { desc = "Java Organize Imports" })
vim.keymap.set("n", "<leader>Jv", jdtls.extract_variable, { desc = "Java Extract Variable" })
vim.keymap.set("n", "<leader>Jc", jdtls.extract_constant, { desc = "Java Extract Constant" })
vim.keymap.set("n", "<leader>Jm", jdtls.extract_method, { desc = "Java Extract Method" })
