return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "main", -- main, moon, dawn
      dark_variant = "main",
      bold_vert_split = false,
      dim_nc_background = false,
      disable_background = true, -- transparent
      disable_float_background = true,
      disable_italics = false,
      groups = {
        border = "highlight_med",
        comment = "rose",
        link = "iris",
        punctuation = "love",
        error = "love",
        hint = "gold",
        information = "foam",
        warn = "gold",
        bool = "love",
        number = "gold",
        string = "foam",
        keyword = "pine",
        type = "iris",
        attribute = "gold",
        property = "foam",
        ["function"] = "iris",
        operator = "rose",
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd.colorscheme("rose-pine")
    end,
  },
}
