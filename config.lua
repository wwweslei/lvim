-- install plugins
lvim.plugins = {
  require 'plugins.aerial', -- tags 
  require 'plugins.jaq',  -- runer
  require 'plugins.fugitive', -- git 
  require 'plugins.tabnine', -- autocomplete
  require 'plugins.copilot', -- autocomplete 
  require 'plugins.copilot-cmp',
  require 'plugins.eyeliner',
  require 'plugins.colorful-winsep',
  require 'plugins.signature',
  require 'plugins.better-escape',
  require 'plugins.neotest',
  require 'plugins.formatter',
  require 'plugins.troble', --ferramenta de diagnosticos
  require 'plugins.nump', -- jump to the line
  require 'plugins.glow',
  require 'plugins.multline',
  "ChristianChiarulli/swenv.nvim",
  "rafamadriz/friendly-snippets",
  "stevearc/dressing.nvim",
 "mfussenegger/nvim-dap-python",
  "projekt0n/github-nvim-theme",
  'marko-cerovac/material.nvim',
  "sindrets/diffview.nvim",
}

require 'options'
require 'keymappings'
