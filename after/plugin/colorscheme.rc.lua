-- gruvbox material

vim.o.background = "dark"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_transparent_background = 1

-- > uncomment for applying
--vim.cmd.colorscheme 'gruvbox-material'

-- rose pine
require('rose-pine').setup({
    disable_background = true
})
vim.cmd.colorscheme 'rose-pine'
