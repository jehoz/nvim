local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })

    -- set keybind to format code
    local opts = { buffer = bufnr }
    vim.keymap.set({ 'n', 'x' }, 'gq', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end, opts)
end)


require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    },
})

local lspconfig = require("lspconfig")

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename);

-- lua
lspconfig.lua_ls.setup({})

-- c++
lspconfig.ccls.setup({})

-- python
lspconfig.jedi_language_server.setup({})
lspconfig.pylsp.setup({
    settings = {
        pylsp = {
            plugins = {
                maxLineLength = 100
            }
        }
    }
})

-- haskell
lspconfig.hls.setup({
    filetypes = { 'haskell', 'lhaskell', 'cabal' },

    settings = {
        haskell = {
            formattingProvider = "ormolu"
        }
    }
})

-- rust
lspconfig.rust_analyzer.setup({
    check = {
        command = "clippy",
    }
})

-- markdown
lspconfig.marksman.setup({})

-- gdscripts
lspconfig.gdscript.setup({
})
