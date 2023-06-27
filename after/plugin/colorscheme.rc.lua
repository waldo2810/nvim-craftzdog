-- gruvbox material
vim.o.background = "dark"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_transparent_background = 1

-- rose pine
require('rose-pine').setup({
    disable_background = true
})

-- Apply
vim.cmd.colorscheme 'gruvbox-material'
--vim.cmd.colorscheme 'rose-pine'
