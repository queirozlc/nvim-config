return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd.colorscheme "vesper"
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "RRethy/base16-nvim",
    priority = 1000,
    config = function()
      require("base16-colorscheme").with_config {
        telescope = true,
        indentblankline = true,
        notify = true,
        ts_rainbow = true,
        cmp = true,
        nvimtree = true,
        illuminate = true,
        dapui = true,
      }
    end,
  },
  { "frenzyexists/aquarium-vim" },
  {
    "datsfilipe/vesper.nvim",
    lazy = false,
    priority = 1000,
    name = "vesper",
  },
}
