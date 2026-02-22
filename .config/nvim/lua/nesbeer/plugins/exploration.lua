return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      float = {
        padding = 2,
        max_width = 80,
        max_height = 20,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
    },
    keys = {
      { "-", "<cmd>Oil --float<CR>", desc = "Open parent directory" },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Git Files" })
      vim.keymap.set("n", "<leader>ps", function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end, { desc = "Search String" })
      vim.keymap.set("n", "<leader>vh", builtin.help_tags, { desc = "Help Tags" })
    end,
  },
}
