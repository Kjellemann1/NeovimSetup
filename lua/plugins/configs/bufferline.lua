
local config = {

  options = {
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    separator_style = "thin",
    always_show_bufferline = true,
    indicator = {
      style = "none"
    }
  },

  highlights = {
    buffer_selected = {
      italic = false,
      bold = false
    }
  }

}

return config
