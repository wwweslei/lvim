-- install plugins
lvim.plugins = {
  require 'plugins.aerial',   -- tags
  require 'plugins.jaq',      -- runer
  require 'plugins.fugitive', -- git
  require 'plugins.tabnine',  -- autocomplete
  require 'plugins.copilot',  -- autocomplete
  require 'plugins.copilot-cmp',
  require 'plugins.eyeliner', -- ff jump
  require 'plugins.colorful-winsep',
  require 'plugins.better-escape',
  require 'plugins.neotest',
  require 'plugins.formatter',
  require 'plugins.troble',           --ferramenta de diagnosticos
  require 'plugins.nump',             -- jump to the line
  require 'plugins.glow',             -- server to inject LSP diagnostics
  require 'plugins.multline',
  require 'plugins.indent-blankline', -- This plugin adds indentation guides to all lines
  require 'plugins.noice',            -- This plugin adds indentation guides to all lines
  require 'plugins.modes',            -- Decorações de linhas prismáticas
 "nvim-telescope/telescope-file-browser.nvim",
  "ChristianChiarulli/swenv.nvim",
  "rafamadriz/friendly-snippets",
  "stevearc/dressing.nvim",
  "mfussenegger/nvim-dap-python",
  {
  'weilbith/nvim-code-action-menu',
  cmd = 'CodeActionMenu',
},
  "projekt0n/github-nvim-theme",
  'marko-cerovac/material.nvim',
  "sindrets/diffview.nvim",
  { "NeogitOrg/neogit", dependencies = "nvim-lua/plenary.nvim", config = true },
}

require 'options'
require 'keymappings'
