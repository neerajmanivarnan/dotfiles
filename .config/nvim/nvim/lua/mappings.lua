require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set


map("i", "jk", "<ESC>")
-- Remap Ctrl + S to :w (save)
map('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
map('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
map('v', '<C-s>', '<Esc>:w<CR>gv', { noremap = true, silent = true })
map('n', '<C-a>', 'gg<S-v>G', { noremap = true, silent = true })

-- configuring custom stuff
-- map('n', '<S-l>', 'v$>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<S-l>', 'v$', { noremap = true, silent = true })
vim.keymap.set("n", "L", 'v$')
vim.keymap.set("n", "H", 'v0')
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format Code" })
