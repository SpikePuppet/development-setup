-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.guicursor = ""

-- nu = line numbers?  
vim.opt.nu = true
vim.opt.relativenumber = true

-- Spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- I'm explicitly setting this, I like wrap personally
vim.opt.wrap = true

-- Sets it so not everything is highlighted
vim.opt.hlsearch = false
-- Sets it so it does incremental search, making things appear as you type in the searcg
vim.opt.incsearch = true

vim.opt.termguicolors = true 

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.updatetime = 50
