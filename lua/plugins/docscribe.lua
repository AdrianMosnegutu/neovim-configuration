return {
	dir = "~/Dev/Personal/docscribe.nvim",
	-- "AdrianMosnegutu/docscribe.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("docscribe").setup({
			ui = {
				highlight = {
					style = "signature",
					timeout = 2000,
					bg = "#292e42",
				},
			},
			llm = {
				runner = "ollama",
				model = "gemma3",
			},
		})
	end,
}
