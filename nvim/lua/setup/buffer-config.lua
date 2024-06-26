local status, bufferline =pcall(require,"bufferline")
if (not status) then return end

vim.opt.termguicolors = true
bufferline.setup ({
    options = {
        mode = "tabs",
        separator_style = 'slant',
        always_show_bufferline = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        color_icons = true,
        hightlights = {
            separator = {
              guifg = '#073642',
              guibg = '#002b36',
            },
            separator_selected = {
              guifg = '#073642',
            },
            background = {
              guifg = '#657b83',
              guibg = '#002b36'
            },
            buffer_selected = {
              guifg = '#fdf6e3',
              gui = "bold",
            },
            fill = {
              guibg = '#073642'
            }
        }
    },
})

