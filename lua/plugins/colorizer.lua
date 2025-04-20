return {
    "catgoose/nvim-colorizer.lua",
    event = "VeryLazy",
    opts = {
        lazy_load = true,
        user_default_options = {
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true,  -- Enable all CSS *features*:
            -- names, RGB, RGBA, RRGGBB, RRGGBBAA, AARRGGBB, rgb_fn, hsl_fn
            css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            -- Tailwind colors.  boolean|'normal'|'lsp'|'both'.  True sets to 'normal'
            tailwind = true, -- Enable tailwind colors
            tailwind_opts = { -- Options for highlighting tailwind names
                update_names = true, -- When using tailwind = 'both', update tailwind names from LSP results.  See tailwind section
            },
            -- virtualtext = "●",
            virtualtext = "■",
            virtualtext_mode = "foreground",
            virtualtext_inline = true,
            mode = "virtualtext", -- Set the display mode
        },
        filetypes = {
            "*", -- Highlight all files, but customize some others.
            cmp_docs = { always_update = true },
        },
    },
}
