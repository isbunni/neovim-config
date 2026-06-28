-- ══════════════════════════════════════════════════════════════
--  Bunni's Neovim Config — Entry Point
-- ══════════════════════════════════════════════════════════════

require("b.options")       -- vim.opt settings (line numbers, tabs, etc.)
require("b.keymaps")       -- all keybindings
require("b.lazy")          -- bootstrap lazy.nvim + load plugins

-- Load theme set by ~/.local/bin/theme (b/theme.lua is auto-generated — do not edit)
---@diagnostic disable-next-line: different-requires
pcall(require, "b.theme")

-- Greeting
print("Welcome back, Bunni ૮₍˶ᵔ ᵕ ᵔ˶ ₎ა♡")
