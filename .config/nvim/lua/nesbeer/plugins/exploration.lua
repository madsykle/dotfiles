return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Oil",
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
      { "<leader>pv", "<cmd>Oil<CR>", desc = "Project View" },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>pf", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
      { "<C-p>", "<cmd>Telescope git_files<CR>", desc = "Git Files" },
      {
        "<leader>ps",
        function()
          require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
        end,
        desc = "Search String",
      },
      { "<leader>vh", "<cmd>Telescope help_tags<CR>", desc = "Help Tags" },
    },
  },
}
