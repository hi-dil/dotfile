return {
    "rcarriga/nvim-notify",
    config = function()
        local notify = require("notify")
        notify.setup {
        stages = 'slide',
        timeout = 3000,
        render = "compact"
      }
        notify.history()
        vim.notify = notify
        notify.render = "compact"

    end,
}
