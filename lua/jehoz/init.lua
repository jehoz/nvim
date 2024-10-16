require("jehoz.plug")

-- line numbers
vim.opt.nu = true
vim.opt.rnu = true

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

-- Colorscheme
vim.cmd.colorscheme("catppuccin-mocha")

-- Setting for GUI client I use on windows since powershell sucks
if vim.g.neovide then
    vim.o.guifont = "Iosevka Nerd Font:h10.5"
    vim.g.neovide_fullscreen = true
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_scroll_animation_length = 0.1
end

-- Autoformat on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

------------------------
-- Keybind remappings --
------------------------
vim.g.mapleader = " "

vim.keymap.set("n", "<leader><CR>", vim.lsp.buf.code_action, {})

-- H and L move to beginning and end of line
vim.keymap.set({ "n", "v" }, "H", "^")
vim.keymap.set({ "n", "v" }, "L", "$")

-- center cursor after moving up/down half page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- delete buffer without closing window
vim.keymap.set("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")

-- paste over selection without replacing stuff in register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- get out of terminal mode more easily
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
