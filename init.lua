
require(".core.init")
require(".core.keymaps")
require(".core.options")
require(".lazy")
require("scope").setup({})
require("bufferline").setup({})
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{'filename', file_status = true, path = 1}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_c = {{'filename', file_status = true, path = 1}},
    lualine_x = {'location'}
  },
  tabline = {},
  extensions = {}
}


vim.opt.termguicolors = true
