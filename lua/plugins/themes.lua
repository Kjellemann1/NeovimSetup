
-- Catpuccin

catpuccin = {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha"
    })
    vim.cmd([[colorscheme catppuccin]])
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

-- Cobalt2

cobalt2 = {
  "lalitmee/cobalt2.nvim",
  priority = 1000,
  dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
  init = function()
    require("colorbuddy").colorscheme("cobalt2")
  end,
}

-- Bluloco

bluloco = {
  'uloco/bluloco.nvim',
  priority = 1000,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    -- your optional config goes here, see below.
  end,
}

-- VSCodeModern

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

-- Tokyonight

tokyonight = {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    vim.g.tokyonight_style = "night"
    vim.cmd[[colorscheme tokyonight]]
  end,
}

-- VSCode

vscode = {
  "Mofiqul/vscode.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("vscode")
  end,
}

-- Onedark

onedark = {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = "darker"
    })
    vim.cmd[[colorscheme onedark]]
  end,
}

return vscode
