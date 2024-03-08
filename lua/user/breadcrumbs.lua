local M = {
  "LunarVim/breadcrumbs.nvim",
  event = "BufReadPre"
}

function M.config()
  require("breadcrumbs").setup()
end

return M
