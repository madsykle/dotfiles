return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      delay = 400, -- mobile: need time to read
      spec = {
        -- Groups
        { "<leader>a", desc = "Harpoon Add" },
        { "<leader>e", desc = "Harpoon Menu" },
        { "<leader>f", group = "format" },
        { "<leader>g", group = "git" },
        { "<leader>h", group = "hunk" },
        { "<leader>p", group = "project" },
        { "<leader>s", group = "split" },
        { "<leader>v", group = "view" },

        -- Harpoon slots
        { "<leader>1", desc = "→ File 1" },
        { "<leader>2", desc = "→ File 2" },
        { "<leader>3", desc = "→ File 3" },
        { "<leader>4", desc = "→ File 4" },

        -- Quick actions
        { "<leader>n", desc = "Next Buffer" },
        { "<leader>d", desc = "Delete Buffer" },

        -- Find / search
        { "<leader>pf", desc = "Find Files" },
        { "<leader>ps", desc = "Search String" },
        { "<leader>pv", desc = "Project View" },
        { "<leader>vh", desc = "Help Tags" },

        -- Git
        { "<leader>gd", desc = "Diffview" },
        { "<leader>gh", desc = "Git History" },
        { "<leader>gm", desc = "Markdown Preview" },

        -- Hunk
        { "<leader>hs", desc = "Stage Hunk" },
        { "<leader>hr", desc = "Reset Hunk" },
        { "<leader>hp", desc = "Preview Hunk" },
        { "<leader>hb", desc = "Blame Line" },
        { "<leader>hd", desc = "Diff This" },

        -- LSP
        { "<leader>vd", desc = "Diagnostics" },
        { "<leader>vca", desc = "Code Action" },
        { "<leader>vrr", desc = "References" },
        { "<leader>vrn", desc = "Rename" },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Keymaps",
      },
    },
  },
}
