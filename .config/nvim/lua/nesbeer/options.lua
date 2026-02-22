local opt = vim.opt

-- General
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 0 -- Minimal UI
opt.laststatus = 3 -- Global statusline
opt.expandtab = true
opt.scrolloff = 10
opt.shell = "fish"
opt.backupskip = { "/tmp/*" }
opt.inccommand = "split"
opt.ignorecase = true
opt.smartcase = true
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.wrap = false
opt.backspace = { "start", "eol", "indent" }
opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" })
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "cursor"
opt.mouse = ""
opt.guicursor = ""

-- Modern UX
opt.smoothscroll = true
opt.virtualedit = "block"
opt.cursorlineopt = "both"
opt.pumheight = 10
opt.pumblend = 0
opt.winblend = 0

-- Appearance
opt.termguicolors = true
opt.relativenumber = true
opt.number = true
opt.signcolumn = "yes"
opt.cursorline = true

-- Performance
opt.updatetime = 250
opt.timeoutlen = 300

-- Completeopt
opt.completeopt = "menu,menuone,noselect"

-- Astro support
vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
