
local plugins = {

  { -- Copilot
    lazy = false,
    "github/copilot.vim",
  },

  { -- Autopairs
    lazy = false,
    "windwp/nvim-autopairs",
    config = function() 
      require("nvim-autopairs").setup{}
    end,
  },

  { -- NvimTree
    lazy = false,
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      local nvimtree = require("nvim-tree").setup{}
      vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    end,
  },

  { -- Telescope
    lazy = false,
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
  },

  -- {
  --   -- Snap
  --   lazy = false,
  --   "camspiers/snap",
  --   keys = function() 
  --     local snap = require("snap")
  --     return {
  --       { "<leader>ff", snap.config.file({ producer = "ripgrep.file" }) },
  --       { "<leader>fw", snap.config.vimgrep({}) },
  --     }
  --   end,
  -- },

  { -- Comment
    lazy = false,
   "numToStr/Comment.nvim",
    event = {"BufRead", "BufNewFile"},
    config = true
  },

  { -- Bufferline
    lazy = false,
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {"nvim-tree/nvim-web-devicons"}
  },

  {
    "tiagovla/scope.nvim",
  },

  { 
    'ojroques/nvim-bufdel',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>x', ':BufDel<CR>', { noremap = true, silent = true })
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
  },

}

return plugins
