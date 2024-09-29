-- Explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc="Open the Explorer" })

-- Move highlighted text in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Fix cursor place when underneath lines are appended
vim.keymap.set("n", "J", "mzJ`z")

-- Fix cursor place in the middle when moving half a page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Fix cursor place in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy text and paste it without losing it
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
