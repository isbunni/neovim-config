return {
  {
    "rebelot/kanagawa.nvim",
    priority = 0,
    config = function()
      require("kanagawa").setup({ theme = "dragon" })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}
