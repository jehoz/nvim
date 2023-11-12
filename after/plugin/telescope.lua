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

vim.keymap.set("n", "<leader>fd", builtin.find_files, {})

vim.keymap.set("n", "<leader>ff", function()
    builtin.find_files({ cwd = utils.buffer_dir() })
end)

vim.keymap.set("n", "<leader>fg", builtin.git_files, {})

vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

vim.keymap.set("n", "<leader>z", function()
    builtin.spell_suggest(themes.get_cursor({}))
end)
