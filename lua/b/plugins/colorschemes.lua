-- ══════════════════════════════════════════════════════════════
--  Colorschemes — All four themes available via theme switcher
-- ══════════════════════════════════════════════════════════════

return {
  -- Gruvbox — warm retro groove (default on first install)
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Load before other plugins
  },

  -- OneDark Pro — clean, Atom-inspired
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
  },

  -- Tokyo Night — deep blue, modern
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = { style = "night" },
  },

  -- Catppuccin — pastel, easy on the eyes
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = { flavour = "mocha" },
  },
}
