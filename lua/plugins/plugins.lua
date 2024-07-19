
plugins = {

  { -- Luarocks
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },

  { -- Treesitter
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      local config = require("plugins.configs.treesitter")
      require("nvim-treesitter.configs").setup(config)
    end,
  },

  { -- Copilot
    lazy = false,
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
    end,
  },

  { -- Autopairs
    lazy = false,
    "windwp/nvim-autopairs",
    config = function() 
      require("nvim-autopairs").setup({})
    end,
  },

  { -- NvimTree
    lazy = false,
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      local config = require("plugins.configs.nvimtree")
      require("nvim-tree").setup(config)
      vim.api.nvim_set_keymap("n", "<M-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  },

  { -- Telescope
    lazy = false,
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
      local config = require("plugins.configs.telescope")
      require("telescope").setup(config)
    end
  },

  { -- Comment
    lazy = false,
   "numToStr/Comment.nvim",
    event = {"BufRead", "BufNewFile"},
    config = true
  },

  -- { -- Bufferline
  --   lazy = false,
  --   "akinsho/bufferline.nvim",
  --   version = "*",
  --   dependencies = {"nvim-tree/nvim-web-devicons"},
  --   config = function()
  --     local config = require("plugins.configs.bufferline")
  --     require("bufferline").setup(config)
  --   end,
  -- },

  { -- Scope
    "tiagovla/scope.nvim",
    config = function()
      require("scope").setup({})
    end,
  },

  { -- BufDel
    "ojroques/nvim-bufdel",
    config = function()
      require("bufdel").setup({
        quit = false,
        vim.api.nvim_set_keymap("n", "<leader>x", ":BufDel<CR>", { noremap = true, silent = true })
      })
    end,
  },

  { -- Lualine
    "nvim-lualine/lualine.nvim",
    requires = {"nvim-tree/nvim-web-devicons", opt = true},
    config = function()
      local config = require("plugins.configs.lualine")
      require("lualine").setup(config)
    end,
  },

  { -- LSP
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  { -- Indent Blankline
    "lukas-reineke/indent-blankline.nvim", 
    lazy = false,
    config = function() 
      local config = require("plugins.configs.indentblankline")
      require("ibl").setup(config) 
    end,
  },

  { -- Startuptime
    "dstein64/vim-startuptime",
  },

  { -- CodeRunner
    "CRAG666/code_runner.nvim",
    config = function()
      local config = require("plugins.configs.coderunner")
      require("code_runner").setup(config)
    end,
  },

  { -- Harpoon
    "ThePrimeagen/harpoon",
    config = function()
      config = require("plugins.configs.harpoon")
      require("harpoon").setup(config)
    end,
  },

}

return plugins
