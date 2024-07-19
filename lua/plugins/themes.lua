
catpuccin = {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      -- flavour = "mocha"
    })
    vim.cmd([[colorscheme catppuccin]])
  end,
}

dracula = {
  "Mofiqul/dracula.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme dracula]])
  end,
}

cobalt2 = {
  "lalitmee/cobalt2.nvim",
  priority = 1000,
  dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
  init = function()
    require("colorbuddy").colorscheme("cobalt2")
  end,
}

bluloco = {
  'uloco/bluloco.nvim',
  priority = 1000,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    -- your optional config goes here, see below.
  end,
}

vscode_modern = {
  "gmr458/vscode_modern_theme.nvim",
  priority = 1000,
  config = function()
    require("vscode_modern").setup({
      cursorline = true,
      transparent_background = false,
      nvim_tree_darker = true,
    })
    vim.cmd.colorscheme("vscode_modern")
  end,
}

tokyonight = {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    vim.g.tokyonight_style = "night"
    vim.cmd.colorscheme("tokyonight")
  end,
}

vscode = {
  "Mofiqul/vscode.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("vscode")
  end,
}

onedark = {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = "darker"
    })
    vim.cmd.colorscheme("onedark")
  end,
}

rosepine = {
  "rose-pine/neovim",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "dawn"
    })
    vim.cmd.colorscheme("rose-pine")
  end,
}

everforest = {
  "sainnhe/everforest",
  priority = 1000,
  config = function()
    vim.o.background = "dark"
    vim.g.everforest_disable_italic_comment = true
    vim.g.everforest_background = "hard"
    vim.cmd.colorscheme("everforest")
  end,
}

return everforest
