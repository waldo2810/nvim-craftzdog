local keymap = vim.keymap

-- Close all buffers and reopen lastone
keymap.set('n', '<leader>o', ':%bd|e#|bd#<cr>',{})

-- Nerdtrw?
keymap.set('n','<leader>pv',':Ex<Return>',{silent = true})

-- Neo-tree
--keymap.set('n','<leader>e',':Neotree<Return>',{silent = true})

-- Source file
keymap.set('n','<leader>so',':so %<cr>',{silent=true})

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Fast saving
keymap.set("n", "<Leader>w", ":write!<CR>", {})
keymap.set("n", "<Leader>q", ":q!<CR>", {})

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

-- Resize window
keymap.set('n', '<C-left>', '<C-w><')
keymap.set('n', '<C-right>', '<C-w>>')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')

-- Bufferline
keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
