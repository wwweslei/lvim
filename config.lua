-- install plugins
lvim.plugins = {
  require 'plugins.aerial',
  require 'plugins.jaq',
  require 'plugins.fugitive',
  require 'plugins.tabnine',
  require 'plugins.copilot',
  require 'plugins.copilot-cmp',
  require 'plugins.eyeliner',
  require 'plugins.colorful-winsep',
  require 'plugins.signature',
  require 'plugins.better-escape',
  require 'plugins.neotest',
  require 'plugins.formatter',
  "ChristianChiarulli/swenv.nvim",
  "rafamadriz/friendly-snippets",
  "stevearc/dressing.nvim",
  "mfussenegger/nvim-dap-python",
  "nacro90/numb.nvim",
  "mg979/vim-visual-multi",
  "projekt0n/github-nvim-theme",
  'marko-cerovac/material.nvim',
}

require 'options'
require 'keymappings'
