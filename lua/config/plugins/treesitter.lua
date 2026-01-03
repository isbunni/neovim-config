return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- Remove or change event: use BufReadPre * for all files, or omit for startup
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "query", "bash", "markdown" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

