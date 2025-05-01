return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	notify = {
		enabled = false, -- Enables notifications through Noice
		view = "notify", -- Use nvim-notify under the hood
	},
	opts = {
		-- add any options here
	},
	config = function()
		require("notify").setup({
            merge_duplicates = true,
			fps = 60,
			render = "wrapped-compact",
			timeout = 2000,
		})

		require("noice").setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = true,
				lsp_doc_border = true,
			},
		})
	end,
}
