-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Explore
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Line Numbers
vim.keymap.set('n', '<leader>n', function()
	vim.opt.relativenumber = not vim.o.relativenumber
end)

-- Folding
vim.opt.foldmethod = 'indent'
vim.opt.foldenable = false
vim.keymap.set('n', '<leader>f', function()
	vim.opt.foldenable = not vim.o.foldenable
end)
