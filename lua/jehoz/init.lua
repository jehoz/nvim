require("jehoz.plug")

-- line numbers
vim.opt.nu = true

-- 4 space tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- auto-indenting
vim.opt.autoindent = true
vim.opt.smartindent = true

-- disable line wrap
vim.opt.wrap = false

-- highlight incremental search, turn off highlights after search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- scroll offset (8 line padding at top and bottom of view when scrolling)
vim.opt.scrolloff = 8

vim.opt.colorcolumn = "80"

-- Keybind remapping
vim.g.mapleader = " "

vim.keymap.set('n', '<leader><CR>', vim.lsp.buf.code_action, {})

-- Colorscheme
vim.cmd.colorscheme("catppuccin-mocha")
