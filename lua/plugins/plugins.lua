
plugins = {

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
      local opts = require("plugins.configs.nvimtree")
      require("nvim-tree").setup(opts)
      vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    end,
  },

  { -- Telescope
    lazy = false,
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
  },

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

  { -- Scope
    "tiagovla/scope.nvim",
  },

  { -- BufDel
    'ojroques/nvim-bufdel',
    config = function()
      require("bufdel").setup({
        quit = false,
        vim.api.nvim_set_keymap('n', '<leader>x', ':BufDel<CR>', { noremap = true, silent = true })
      })
    end,
  },

  { -- Lualine
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
  },

}

return plugins
