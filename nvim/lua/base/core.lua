vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.shell = "fish"

vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.smarttab = true

--search options
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

--text options
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.clipboard = "unnamedplus"

vim.noswapfile = true
vim.opt.spell = true

vim.opt.wrap = false
vim.opt.mouse = 'a'
vim.opt.splitkeep = "cursor"
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.scrolloff = 10



if vim.fn.has("nvim-0.8") == 1 then
    vim.opt.cmdheight = 0
end
