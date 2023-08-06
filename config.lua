-- install plugins
lvim.plugins = {
  require 'plugins.aerial',          -- tags
  require 'plugins.jaq',             -- runer
  require 'plugins.fugitive',        -- git
  require 'plugins.tabnine',         -- autocomplete
  require 'plugins.copilot',         -- autocomplete
  require 'plugins.copilot-cmp',
  require 'plugins.eyeliner',        -- ff jump
  require 'plugins.colorful-winsep', -- decora as janelas
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
  require 'plugins.neogit',
  require 'plugins.nvim-code-action-menu',
  require 'plugins.telescope-extentions',
  require 'plugins.themes',
  require 'plugins.diffview',
  require 'plugins.dap-python', -- python debugger
  require 'plugins.swenv',      -- python virtualenv
  require 'plugins.nvim-colorizer',
}

require 'options'
require 'keymappings'
require 'null-ls'
