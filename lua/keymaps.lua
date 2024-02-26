vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")
-- exit terminal mode
keymap.set("t", "jk", "<C-\\><C-n>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<A-j>", "ddp")
keymap.set("n", "<A-k>", "ddkP")

keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>") -- increment number under cursor
keymap.set("n", "<leader>-", "<C-x>") -- decrement number under cursor

-- toggle between windows
keymap.set("n", "<C-h>", "<C-W>h")
keymap.set("n", "<C-l>", "<C-W>l")
keymap.set("n", "<C-k>", "<C-W>k")
keymap.set("n", "<C-j>", "<C-W>j")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- typescript keymaps
keymap.set("n", "<leader>oi", "<cmd>TypescriptOrganizeImports<cr>")

--lazygit 
keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>")
