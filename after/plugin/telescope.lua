local builtin = require("telescope.builtin")
local themes = require("telescope.themes")
local utils = require("telescope.utils")

require("telescope").setup {
    extensions = {
        ["ui-select"] = {
            themes.get_dropdown {}
        }
    }
}

require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<leader>ff", builtin.git_files, {})

vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})

vim.keymap.set("n", "<leader>z", function()
    builtin.spell_suggest(themes.get_cursor({}))
end)
