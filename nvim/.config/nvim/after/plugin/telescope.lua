local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>h', builtin.help_tags)

vim.keymap.set("n", "<leader>do", function()
    builtin.find_files({
        cwd = "~/dotfiles",
        hidden = true,
        find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" }
    })
end, { desc = "Find files in dotfiles directory" })
