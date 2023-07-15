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

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
