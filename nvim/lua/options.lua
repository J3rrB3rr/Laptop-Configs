local opt = vim.opt

-- Show Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

-- Sidescrolling
opt.wrap = false
opt.sidescroll = 5

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- Term Colors
opt.termguicolors = true
opt.background = "dark"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")
