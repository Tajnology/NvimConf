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

-- Movement
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('v', 'p', '"_dP')
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('v', 'd', '"_d')
vim.keymap.set('v', '<C-c>', '"*y')
vim.keymap.set('v', '<C-v>', '"*p')
vim.keymap.set('n', '<C-c>', '"*y')
vim.keymap.set('n', '<C-v>', '"*p')
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
