
-- Linjenummer

vim.opt.number = true
vim.opt.relativenumber = true

-- Sørg for at kommentar ikke gjentas på ny linje

vim.api.nvim_exec([[
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]], false)

-- Shiftwidth=2

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

-- Linewrap

vim.o.wrap = false
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.showbreak = '↪'

vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {'*.md', '*.tex', '.txt'},
  command = 'setlocal wrap'
})

-- Auto resize panes when resizing nvim window

vim.api.nvim_create_autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
