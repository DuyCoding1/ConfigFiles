require("solarized-osaka").setup({
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help", "vista_kind", "terminal", "packer"},
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

  on_colors = function(colors) 
      colors.hint = colors.orange
      colors.error = "#ff0000"
  end,
  on_highlights = function(hl, c)
      local prompt = "#2d3149"
      hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
      }
      hl.TelesopeBoder = {
          bg = c.bg_dark,
          fg = c.bg_dark,
      }
      hl.TelesopePromptNormal = {
          bg = prompt,
      }
      hl.TelescopePromptBorder = {
          bg = prompt,
          fg = prompt,
      }
      hl.TelescopePromptTitle = {
          bg = prompt,
          fg = prompt,
      }
      hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
      }
      hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
      }
  end,
})

-- Lua
-- require('onedark').setup {
--     style = 'darker',--'darker'
--     transparent= true,
--     term_colors=true,
--     lualine = {
--         transparent=true,
--     },
--     diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true,   -- use undercurl instead of underline for diagnostics
--         background = true,    -- use background color for virtual text
--     },
--     --   colors = {
--     -- bright_orange = "#ff8800",    -- define a new color
--     -- green = '#00ffaa',            -- redefine an existing color
--     -- },
--     --   highlights = {
--     --     ["@keyword"] = {fg = '$green'},
--     --     ["@string"] = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
--     --     ["@function"] = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
--     --     ["@function.builtin"] = {fg = '#0059ff'}
--    --   }
-- }
-- require('onedark').load()
