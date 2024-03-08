local M = {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter"
}

function M.config()
  require("nvim-ts-autotag").setup {
    filetypes = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "rescript",
      "xml",
      "php",
      "markdown",
      "astro",
      "glimmer",
      "handlebars",
      "hbs",
    },
  }
end

return M
