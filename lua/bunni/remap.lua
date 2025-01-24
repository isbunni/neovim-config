vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>c", vim.cmd.NvimTreeCollapse)
vim.keymap.set("n", "<leader>E", vim.cmd.NvimTreeFocus)
vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle)
--lazy
vim.keymap.set('n', '<leader>L', vim.cmd.Lazy)
vim.keymap.set('n', '<leader>I', function()
  require("lazy").install()
end, { noremap = true, silent = true })

--require("lazy").install(opts?)
--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
--harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>0", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>9", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>8", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>7", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>6", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(6) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- Undo
vim.keymap.set('n', '<leader>=', vim.cmd.UndotreeToggle)
