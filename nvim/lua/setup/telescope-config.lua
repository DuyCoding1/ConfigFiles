local fb_actions = require("telescope").extensions.file_browser.actions
local actions = require("telescope.actions")
require('telescope').setup {
  defaults = {
      mappings = {
          ["n"] = { 
              ["q"] = actions.close,
          }
      },
  },
  pickers = {
      diagnostics = {
          theme = "ivy",
          initial_mode = "normal",
          layout_config = {
              preview_cutoff = 9999,
          }
      }
  },
  extensions = {
      file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
          mappings = {
            ["i"] = {
                  ["<A-c>"] = fb_actions.create,
                  ["<S-CR>"] = fb_actions.create_from_prompt,
                  ["<A-r>"] = fb_actions.rename,
                  ["<A-m>"] = fb_actions.move,
                  ["<A-y>"] = fb_actions.copy,
                  ["<A-d>"] = fb_actions.remove,
                  ["<C-o>"] = fb_actions.open,
                  ["<C-g>"] = fb_actions.goto_parent_dir,
                  ["<C-e>"] = fb_actions.goto_home_dir,
                  ["<C-w>"] = fb_actions.goto_cwd,
                  ["<C-t>"] = fb_actions.change_cwd,
                  ["<C-f>"] = fb_actions.toggle_browser,
                  ["<C-h>"] = fb_actions.toggle_hidden,
                  ["<C-s>"] = fb_actions.toggle_all,
                  ["<bs>"] = fb_actions.backspace,
                },
            ["n"] = {
                  ["C"] = fb_actions.create,
                  ["R"] = fb_actions.rename,
                  ["M"] = fb_actions.move,
                  ["Y"] = fb_actions.copy,
                  ["d"] = fb_actions.remove,
                  ["o"] = fb_actions.open,
                  ["g"] = fb_actions.goto_parent_dir,
                  ["e"] = fb_actions.goto_home_dir,
                  ["w"] = fb_actions.goto_cwd,
                  ["t"] = fb_actions.change_cwd,
                  ["f"] = fb_actions.toggle_browser,
                  ["h"] = fb_actions.toggle_hidden,
                  ["s"] = fb_actions.toggle_all,
                },
          },
    },
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension"file_browser"
