local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- General
keymap.set("n", "<Esc>", ":noh<CR>", opts)
keymap.set("n", "<C-a>", "gg<S-v>G", opts) -- select all

-- Tabs (single key, easy on mobile)
keymap.set("n", "<Tab>", ":tabnext<Return>", opts)
keymap.set("n", "<S-Tab>", ":tabprev<Return>", opts)

-- Tmux-Sessionizer
keymap.set("n", "<C-f>", "<cmd>silent !tmux-sessionizer<CR>")

-- Quick buffer nav (leader + single key)
keymap.set("n", "<leader>n", ":bn<CR>", { desc = "Next Buffer" })
keymap.set("n", "<leader>d", ":bd<CR>", { desc = "Delete Buffer" })

-- Quick split (touch-friendly: leader + key)
keymap.set("n", "<leader>s", ":split<Return>", opts)
keymap.set("n", "<leader>v", ":vsplit<Return>", opts)
