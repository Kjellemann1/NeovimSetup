
-- Catpuccin

catpuccin = {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme catppuccin]])
  end,
}

-- Nightfly

nightfly = {
  "bluz71/vim-nightfly-guicolors",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme nightfly]])
  end,
}

-- Transparent

transparent = {
  "xiyaowong/transparent.nvim"
}

return { catpuccin, transparent }
