vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.cmd("highlight ColorColumn guibg=#333333")

vim.api.nvim_set_hl(0, 'Normal', { bg = '#1C1C1C' })
vim.api.nvim_set_hl(0, 'LineNr', { bg = '#1C1C1C', fg = '#AAAAAA' })  -- Same dark grey background for line numbers
vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#1C1C1C' })

vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = '#2E3440', fg = '#D8DEE9', bold = true })
vim.api.nvim_set_hl(0, 'TreesitterContextLineNumber', { bg = '#2E3440', fg = '#88C0D0' })


vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- vim.opt.shortmess:append("I")  -- disables the intro message

-- vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
-- vim.cmd([[highlight NormalNC guibg=NONE ctermbg=NONE]])
-- vim.cmd([[highlight EndOfBuffer guibg=NONE ctermbg=NONE]])
-- vim.cmd([[highlight SignColumn guibg=NONE ctermbg=NONE]])
