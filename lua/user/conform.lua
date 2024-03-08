local formatters = {
  lua = { "stylua" },
  python = { "autopep8" },
  cpp = { "clang_format" },
  c = { "clang_format" },
  go = { "gofumpt" },
  cs = { "csharpier" },
  yaml = { "yamlfmt" },
}

local prettier_ft = {
  "css",
  "flow",
  "graphql",
  "html",
  "json",
  "javascriptreact",
  "javascript",
  "less",
  "markdown",
  "scss",
  "typescript",
  "typescriptreact",
  "vue",
}

for _, filetype in pairs(prettier_ft) do
  formatters[filetype] = { "prettier" }
end

local M = {
  'stevearc/conform.nvim',
  event = "InsertEnter"
}

M.opts = {
  format_on_save = {
    async = true,
    quiet = true,
    lsp_fallback = true
  },
  formatters_by_ft = formatters
}

return M
