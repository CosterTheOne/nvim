vim.g.mapleader = " "

vim.keymap.set('n', '<leader>er', function() vim.diagnostic.open_float() end, {})
