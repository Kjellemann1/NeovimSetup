
return {
  defaults = {
    layout_config = {
      width = 0.6,
      height = 0.6,
      prompt_position = "top",
    },
    initial_mode = "normal",
    preview = false,
    mappings = {
      n = { ["o"] = "select_default"}
    },
  },
  pickers = {
    find_files = {
      preview = true,
      initial_mode = "insert",
    },
    live_grep = {
      preview = true,
      initial_mode = "insert",
    },
  },
}
