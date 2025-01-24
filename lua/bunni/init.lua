-- key remap
require("bunni.remap")

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- load up message
print("Welcome back, Bunni ૮₍˶ᵔ ᵕ ᵔ˶ ₎ა♡")

--relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.wrap = false -- Don't wrap lines
vim.opt.linebreak = true     -- Break lines at word boundaries

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

--[[require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "dragon",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
--]]

--Airline color theme
--vim.g.airline_theme = 'base16_gruvbox_dark_medium'

-- spacing
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.shiftwidth = 2     -- Size of an indent
vim.opt.tabstop = 2        -- Number of spaces tabs count for
vim.opt.softtabstop = 2    -- Number of spaces that a <Tab> counts for while
--                            performing editing operations
vim.opt.smartindent = true -- Insert indents automatically

vim.opt.textwidth = 80       -- Set text width to 80 characters
vim.opt.colorcolumn = "80"   -- Highlight column 80
