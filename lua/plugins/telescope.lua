return {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	dependencies = {
        'nvim-lua/plenary.nvim',
        'akinsho/nvim-toggleterm.lua',
        'sopa0/telescope-makefile',
    },
    config = function()
        require('telescope').load_extension('make')
    end,
}
