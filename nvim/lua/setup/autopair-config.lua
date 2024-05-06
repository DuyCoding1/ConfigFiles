local nvim_autopairs = require('nvim-autopairs')
local nvim_ts_autotag = require('nvim-ts-autotag')

nvim_autopairs.setup({
    enable_check_bracket_line = true,
})
nvim_ts_autotag.setup({
    filetypes = {
        "html",
        "xml"
    }
})
