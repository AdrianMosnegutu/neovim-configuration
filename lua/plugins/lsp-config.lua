return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({ -- Lua
				capabilities = capabilities,
			})
			lspconfig.matlab_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({ -- C/C++
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({ -- Java
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({ -- JavaScript / TypeScript
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				on_attach = function(client, bufnr)
					-- Enable auto-fix on save
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						command = "EslintFixAll",
					})
				end,
			})

			-- Customize hover documentation borders
			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = "rounded", -- Rounded borders
			})
		end,
	},
}
