
-- Line numbers

vim.opt.number = true
vim.opt.relativenumber = true

-- Comments don't continue on new line

vim.api.nvim_exec([[
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]], false)

-- Shiftwidth=2

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end
})

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
  command = "wincmd =",
})


-- Reselect after indenting

function OpenTabAtEnd()
  local current_dir = vim.fn.getcwd()
  local total_tabpages = vim.fn.tabpagenr('$')

  vim.cmd('tabnext ' .. total_tabpages)
  
  vim.cmd('tabnew')
  vim.cmd('cd ' .. current_dir)
end

vim.cmd('command! Tabnew lua OpenTabAtEnd()')
