return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("null-ls").setup({
        debug = true,

      })

      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          -- Formatting
          null_ls.builtins.formatting.stylua.with({
            filetypes = { "lua" },
          }),
          null_ls.builtins.formatting.clang_format.with({
            filetypes = { "cpp", "c" },
          }),
          null_ls.builtins.formatting.prettier.with({
            filetypes = { "html", "json", "yaml", "markdown" },
          }),
          -- Completion
          null_ls.builtins.completion.spell,
        },
      })
    end,
  }
}
