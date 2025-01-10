return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- Optional, for file icons
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = false, -- Items are hidden but can be toggled visible
                    hide_dotfiles = false,
                    hide_gitignored = true, -- Hide git-ignored files
					hide_by_name = {
						".DS_Store",
						"thumbs.db",
					},
					hide_by_pattern = {
						"*.o", -- Binary object files
						"*.bin", -- Binary files
						"*.exe", -- Executables
						"*.class", -- Java bytecode files
						"**/*.dSYM", -- dSYM directories
					},
					never_show = { -- Never show these items
						".DS_Store",
						"thumbs.db",
					},
				},
				-- Ensure .gitignore is shown explicitly
				never_show_by_name = {},
			},
			window = {
				width = 40,
				options = {
					cursor_line = false,
				},
			},
		})
	end,
}
