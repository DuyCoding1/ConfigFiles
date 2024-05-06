local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

keymap.set("i", "kj", "<Esc>")
keymap.set("n", "<leader>qw", ":Explore<CR>", opts)
keymap.set("n", "<leader>n", ":noh<CR>", opts)
keymap.set("n","<C-s>",":w<CR>",opts)
keymap.set("n", "<C-a>","gg<S-v>G",opts)

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
    vim.diagnostic.goto_next()
end, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', ';f', ":Telescope file_browser<CR>",opts)
vim.keymap.set('n', ';g', builtin.live_grep, {})
vim.keymap.set('n', ';b', builtin.buffers, {})
vim.keymap.set('n', ';h', builtin.help_tags, {})


keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

--move line
--normal-mode commands
keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", opts)
keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", opts)
keymap.set("n", "<A-h>", ":MoveHChar(-1)<CR>", opts)
keymap.set("n", "<A-l>", ":MoveHChar(1)<CR>", opts)
keymap.set("n", "<leader>wf", ":MoveWord(1)<CR>", opts)
keymap.set("n", "<leader>wb", ":MoveWrod(-1)<CR>", opts)
--visual mode
keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", opts)
keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", opts)
keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", opts)
keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", opts)



-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

--rename key
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })


--window
-- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
-- moving between splits
keymap.set('n', '<A-h>', require('smart-splits').resize_left)
keymap.set('n', '<A-j>', require('smart-splits').resize_down)
keymap.set('n', '<A-k>', require('smart-splits').resize_up)
keymap.set('n', '<A-l>', require('smart-splits').resize_right)
keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
-- swapping buffers between windows
keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)


keymap.set('n', 'K', ':Lspsaga hover_doc<CR>')
