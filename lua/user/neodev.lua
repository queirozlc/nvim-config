local M = {
  "folke/neodev.nvim",
  event = { "BufReadPre", "BufNewFile" },
}

function M.config()
  require("neodev").setup {
    library = { plugins = { "neotest" }, types = true },
  }
end

return M
