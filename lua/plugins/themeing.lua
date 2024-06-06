
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

bluloco ={
  'uloco/bluloco.nvim',
  lazy = false,
  priority = 1000,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    -- your optional config goes here, see below.
  end,
}

-- Transparent

transparent = {
  "xiyaowong/transparent.nvim"
}

return { bluloco, transparent }
