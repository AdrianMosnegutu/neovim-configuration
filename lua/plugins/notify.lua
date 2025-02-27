return {
    "rcarriga/nvim-notify",
    config = function()
        local notify = require("notify")
        notify.setup({ fps = 60, render = "wrapped-compact", timeout = 1000 })
        vim.notify = notify
    end,
}
