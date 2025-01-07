return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				-- Enable slanted separator style
				separator_style = "thin", -- or "thick" or "thin"

				-- Customize the indicator
				-- indicator = {
				-- 	icon = "▎", -- Change it to any symbol you like
				-- },

				-- Adjust settings for bufferline
				always_show_bufferline = false,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_tab_indicators = true,
				max_name_length = 20,
				max_prefix_length = 15,
				tab_size = 20,

				-- Prevent overlapping with Neotree
				offsets = {
					{
						filetype = "neo-tree",
						-- text = "File Explorer", -- Optional: Title text for the offset
						text_align = "left", -- Text alignment: "left", "center", or "right"
						-- separator = true, -- Whether to show a separator
					},
				},
			},
		})
	end,
	event = "BufWinEnter",
}
