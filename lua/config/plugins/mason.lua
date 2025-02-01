return {
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "clangd" },
      }
      require 'lspconfig'.clangd.setup {}
      require 'lspconfig'.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      }

      -- After setting up mason-lspconfig you may set up servers via lspconfig
      -- require("lspconfig").lua_ls.setup {}
      -- require("lspconfig").rust_analyzer.setup {}
      -- ...
    end,
  }
}
