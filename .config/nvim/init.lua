require("nesbeer.options")
require("nesbeer.maps")
require("nesbeer.lazy")

-- Autocommands
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})
local Group = augroup("Group", {})

-- Highlight on yank
autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

-- Remove trailing whitespace on save
autocmd({ "BufWritePre" }, {
  group = Group,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})
