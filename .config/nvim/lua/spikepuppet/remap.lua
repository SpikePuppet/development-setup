vim.g.mapleader = " "

-- Setup the pane commands
vim.api.nvim_set_keymap('n', '<leader>vs', ':vsp<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>hs', ':sp<CR>', {noremap = true})
