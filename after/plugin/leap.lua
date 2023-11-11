local leap = require("leap")

leap.add_default_mappings()

vim.keymap.set({"n", "v"}, "<CR>", function()
    local current_window = vim.fn.win_getid()
    leap.leap {target_windows = {current_window}}
end)
