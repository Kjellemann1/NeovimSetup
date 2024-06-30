
-- Catpuccin

catpuccin = {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
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

-- VSCode

vscode = {
  "gmr458/vscode_modern_theme.nvim",
  lazy = false,
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

return vscode
