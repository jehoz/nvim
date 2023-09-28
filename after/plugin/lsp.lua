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

-- lua
require('lspconfig').lua_ls.setup({})

-- python
require('lspconfig').pylsp.setup({})

-- haskell
require('lspconfig').hls.setup({
    filetypes = { 'haskell', 'lhaskell', 'cabal' },

    settings = {
        haskell = {
            formattingProvider = "ormolu"
        }
    }
})

-- markdown
require('lspconfig').marksman.setup({})
