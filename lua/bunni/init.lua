-- key remap
require("bunni.remap")

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- load up message
print("Welcome back, Bunni ૮₍˶ᵔ ᵕ ᵔ˶ ₎ა♡")

--relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.wrap = false      -- Don't wrap lines
vim.opt.linebreak = true  -- Break lines at word boundaries


--Airline color theme
--vim.g.airline_theme = 'base16_gruvbox_dark_medium'

-- spacing
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.shiftwidth = 2     -- Size of an indent
vim.opt.tabstop = 2        -- Number of spaces tabs count for
vim.opt.softtabstop = 2    -- Number of spaces that a <Tab> counts for while
--                            performing editing operations
vim.opt.smartindent = true -- Insert indents automatically

vim.opt.textwidth = 80     -- Set text width to 80 characters
vim.opt.colorcolumn = "80" -- Highlight column 80
