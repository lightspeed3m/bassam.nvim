-- [[ Telescope Keymaps ]]
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files within the project" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Find git-controlled files" })
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Search for a file using Grep" })

-- [[ Harpoon Keymaps ]]
local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon a file to the list" })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open Harpoon's list" })
vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Harpoon to file 1" } )
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Harpoon to file 2" })
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Harpoon to file 3" })
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = "Harpoon to file 4" })
vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end, { desc = "Clears Harpoon" })

-- [[ Undotree Keymaps ]]
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Open the Undo Tree" })

-- [[ Fugitive Keymaps ]]
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Check project's Git status" })

-- [[ Dashboard Keymaps ]]
vim.keymap.set("n", "<leader>d", function () vim.cmd[[Dashboard]] end, { desc = "Opens the Dashboard"})

-- [[ Persistence Keymaps ]]
local persistence = require("persistence")

vim.keymap.set("n", "<leader>qr", function() persistence.load() end, { desc = "Restore Session" })
vim.keymap.set("n", "<leader>qs", function() persistence.select() end, { desc = "Select Session"})
vim.keymap.set("n", "<leader>ql", function() persistence.load({ last = true}) end, { desc = "Restore Last Session"})
vim.keymap.set("n", "<leader>qd", function() persistence.stop() end, { desc = "Don't Save Current Session"})
