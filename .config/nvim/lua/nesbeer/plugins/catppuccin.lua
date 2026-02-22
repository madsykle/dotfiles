return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h catppuccin-colors
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        show_end_of_buffer = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
        },
        no_italic = false,
        no_bold = false,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          notify = true,
          mini = true,
          treesitter = true,
          mason = true,
          harpoon = true,
          lspsaga = true,
          which_key = true,
        },
        custom_highlights = function(colors)
          return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            Pmenu = { bg = "none" },
            PmenuSel = { bg = colors.surface0, fg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
          }
        end,
      })

      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
