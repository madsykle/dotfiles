local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- General
keymap.set("n", "<leader>pv", ":Oil<CR>", { desc = "Project View (Oil)" })
keymap.set("n", "<Esc>", ":noh<CR>", opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<Tab>", ":tabnext<Return>", opts)
keymap.set("n", "<S-Tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- LSP
keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "Format Code" })

-- Glow (Markdown)
keymap.set('n', "<leader>gm", ":Glow<CR>", { desc = "Markdown Preview" })

-- Tmux-Sessionizer (if available in path)
keymap.set("n", "<C-f>", "<cmd>silent !tmux-sessionizer<CR>")

-- Buffer navigation
keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next Buffer" })
keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Prev Buffer" })
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete Buffer" })
