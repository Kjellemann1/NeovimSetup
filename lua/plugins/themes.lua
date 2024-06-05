
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

-- Monet

monet = {
  "fynnfluegge/monet.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme monet]])
  end,
}

-- Dracula

dracula = {
  "Mofiqul/dracula.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme dracula]])
  end,
}

-- Transparent

transparent = {
  "xiyaowong/transparent.nvim"
}

return { dracula, transparent }
