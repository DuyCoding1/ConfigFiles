local treesitter = require'nvim-treesitter.configs'

treesitter.setup{
    ensure_isntalled = {
    },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
        use_language = true,
    },
    indent = {
        enable = true,
    },
    auto_tag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetypes = {"html","xml"}
    },
}
