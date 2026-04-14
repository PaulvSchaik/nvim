-- nvim lua config Paul 2026

vim.pack.add({
	'https://github.com/EdenEast/nightfox.nvim.git',
	'https://github.com/folke/which-key.nvim.git',
	'https://github.com/stevearc/oil.nvim.git',
	'https://github.com/nvim-tree/nvim-web-devicons.git',
    'https://github.com/uga-rosa/ccc.nvim.git',
})
vim.pack.get()

-- loading settings
require 'settings.core'
require 'settings.keymaps'
require 'settings.plugins'
