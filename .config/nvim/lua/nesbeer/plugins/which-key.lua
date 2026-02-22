return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      spec = {
        { "<leader>f", group = "file/format" },
        { "<leader>p", group = "project" },
        { "<leader>g", group = "git/glow" },
        { "<leader>b", group = "buffer" },
        { "<leader>v", group = "view/diagnostic" },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}
