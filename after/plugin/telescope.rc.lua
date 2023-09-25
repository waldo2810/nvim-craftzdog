local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup {
  defaults = {
    initial_mode = "normal",
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
}
-- Keymaps
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
