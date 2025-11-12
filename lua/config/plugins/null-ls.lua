return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        debug = true,
        sources = {
          -- Formatting
          null_ls.builtins.formatting.stylua.with({
            filetypes = { "lua" },
          }),
          null_ls.builtins.formatting.clang_format.with({
            filetypes = { "cpp", "c" },
          }),
          null_ls.builtins.formatting.prettier.with({
            filetypes = {
              "javascript",
              "javascriptreact",
              "typescript",
              "typescriptreact",
              "vue",
              "css",
              "scss",
              "less",
              "html",
              "json",
              "jsonc",
              "yaml",
              "markdown",
              "markdown.mdx",
              "graphql",
              "handlebars",
              "svelte",
              "astro",
              "htmlangular",
            },
          }),
          null_ls.builtins.formatting.asmfmt,
          -- Completion
          null_ls.builtins.completion.spell,
        },
      })
    end,
  },
}
