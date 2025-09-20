require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = require('lualine.themes._black-metal').get()
        -- theme = 'everforest'
    },
    sections = {
        lualine_a = { { 'mode', icon = '🐇' } }, -- Mode icon
        lualine_b = { 'branch', 'diff', 'diagnostics' }, -- Git branch, diff, diagnostics
        lualine_c = { { 'filename' } }, -- File icon
        lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Encoding and file info
        lualine_y = { 'progress' }, -- Progress bar
        lualine_z = { { 'location', icon = '' } }, -- Location with icon
    }
}

