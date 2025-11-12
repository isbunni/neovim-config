return {
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" },

        -- Use handlers to automatically configure servers without manual setup
        handlers = {
          -- default handler applies to all installed servers
          function(server_name)
            require("lspconfig")[server_name].setup({})
          end,

          -- You can add custom handlers for specific servers if needed
          -- For example, custom settings for lua_ls:
          lua_ls = function()
            require("lspconfig").lua_ls.setup({
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" },
                  },
                },
              },
            })
          end,
        },
      })
    end,
  },
}
