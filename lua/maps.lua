local keymap = vim.keymap

-- Neo-tree
keymap.set('n','<leader>b',':Neotree<Return>',{silent = true})

-- Source file
keymap.set('n','<leader>so',':so %')

-- Delete a word backwards
keymap.set('n','dw','vb"_d')

-- New tab
keymap.set('n','te',':tabedit<Return>', {silent = true})

-- Split window 
keymap.set('n','ss',':split<Return><C-w>w', {silent = true}) -- Horizontally
keymap.set('n','sv',':vsplit<Return><C-w>w',{silent = true}) -- Vertically

-- Move window
keymap.set('n','<Space>','<C-w>w')
keymap.set('','s<left>','<C-w>h')
keymap.set('','s<up>','<C-w>k')
keymap.set('','s<down>','C-w>j')
keymap.set('','s<right>','C-w>l')
keymap.set('','sh','<C-w>h')
keymap.set('','sk','<C-w>k')
keymap.set('','sj','<C-w>j')
keymap.set('','sl','<C-w>l')

-- Bufferline
keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
