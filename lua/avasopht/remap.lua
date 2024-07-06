vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<localleader><f10>',
  function()
    print('Reloading aa-dev')
    require('lazy.core.loader').reload('aa-dev')
  end)

vim.keymap.set('n', '<M-h>', '<cmd>bp<CR>')
vim.keymap.set('n', '<M-l>', '<cmd>bn<CR>')
vim.keymap.set('n', '<localleader><c-r>', ':w<CR>:AaHotReload<CR>')
-- Change for platform, ... make platform independent
vim.keymap.set('n', '<localleader><c-v>', ':e $userprofile\\appdata\\local\\nvim<CR>')
vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { desc = 'nvimtree toggle window' })
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFocus<CR>', { desc = 'nvimtree focus window' })
