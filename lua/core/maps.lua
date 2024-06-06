
-- Move betweeen splits with Ctrl+h/j/k/l

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Copilot

vim.api.nvim_set_keymap('i', '<A-,>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- R

vim.api.nvim_set_keymap('i', '<M-m>', '<space>%>%<space>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<M-->', '<space><-<space>', { noremap = true, silent = true })

-- New Tab

vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>:tabnew<CR>', { noremap = true, silent = true })

-- Leader key

vim.g.mapleader = " "

-- Move between buffers

vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true })

-- Escape from terminal mode

vim.api.nvim_set_keymap('t', '<S-Tab>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Telescope

vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fw', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- Tabnew

vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })
