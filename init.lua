-- Set <space> as the leader key
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Autocommands ]]
require 'autocmds'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Keymaps loaded before plugins ]]
require 'keymaps/before'

-- [[ Configure and install plugins ]]
require('lazy').setup({
  require 'colorscheme',
  { import = 'plugins' },
}, {
  ui = require 'ui',
})

-- [[ Keymaps loaded after plugins ]]
-- Any remap related to plugins goes here
require 'keymaps/after'
