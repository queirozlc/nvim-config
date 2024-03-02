local M = {
  "jayden-chan/base46.nvim",
}

function M.config()
  local present, base46 = pcall(require, "base46")
  if not present then
    return
  end

  local theme = "rxyhn"
  local color_base = "base46"

  local theme_opts = {
    base = color_base,
    theme = theme,
    transparency = false,
  }

  base46.load_theme(theme_opts)
end

return M
