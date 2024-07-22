
require(".maps")
require(".qol")
require(".lazy")

vim.opt.termguicolors = true

-- Add back tilde!!!

vim.cmd([[ highlight EndOfBuffer guifg=Grey ]])

-- Cursor Settings

-- vim.api.nvim_set_hl(0, "Cursor", { bg = "#a7c080" })
-- vim.api.nvim_set_hl(0, "iCursor", { bg = "#d5c9ab" })
-- vim.api.nvim_set_hl(0, "vCursor", { bg = "#e67e80" })
-- vim.api.nvim_set_hl(0, "cCursor", { bg = "#83c092" })
--
-- vim.opt.guicursor = {
--   "n:block-Cursor",
--   "i:block-iCursor",
--   "v:block-vCursor",
--   "c:block-cCursor"
-- }
