local function setup_lualine(theme)
	return string.format(
		[[
    	require("lualine").setup({
			extensions = { "neo-tree" },
			options = {
				theme = "%s",
			},
		})
	]],
		theme
	)
end

return {
	{
		"Shatur/neovim-ayu",
		config = function()
			require("ayu").setup({
				mirage = false,
				terminal = true,
				overrides = {},
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				-- transparent_background = true,
				integrations = {
					mason = true,
					notify = true,
					telescope = true,
					-- bufferline = true,
				},
			})
		end,
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({})
		end,
	},
	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({
				style = "dark", -- Adjust other styles as needed
			})
		end,
	},
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("poimandres").setup({
				-- default configuration
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "moon",
		},
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				styles = {
					italic = false,
					transparency = true,
				},
			})
		end,
	},
	{
		"savq/melange-nvim",
	},
	{
		"Mofiqul/vscode.nvim",
	},
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				themes = {
					{
						name = "Ayu Dark",
						colorscheme = "ayu",
						after = setup_lualine("ayu"),
					},
					{
						name = "Catppuccin",
						colorscheme = "catppuccin",
						after = setup_lualine("catppuccin"),
					},
					{
						name = "Everforest",
						colorscheme = "everforest",
						after = setup_lualine("everforest"),
					},
					{
						name = "Melange",
						colorscheme = "melange",
						after = setup_lualine("melange"),
					},
					{
						name = "Nord",
						colorscheme = "nord",
						after = setup_lualine("nord"),
					},
					{
						name = "Onedark",
						colorscheme = "onedark",
						after = setup_lualine("onedark"),
					},
					{
						name = "Poimandres",
						colorscheme = "poimandres",
						after = setup_lualine("poimandres"),
					},
					{
						name = "Rose Pine",
						colorscheme = "rose-pine",
						after = setup_lualine("rose-pine"),
					},
					{
						name = "Tokyo Night",
						colorscheme = "tokyonight",
						after = setup_lualine("tokyonight"),
					},
					{
						name = "Visual Studio Code",
						colorscheme = "vscode",
						after = setup_lualine("vscode"),
					},
				},
				livePreview = true,
			})
		end,
	},
}
