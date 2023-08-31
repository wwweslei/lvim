-- install plugins
lvim.plugins = {
  require 'plugins.aerial',                -- tags
  require 'plugins.jaq',                   -- runer
  require 'plugins.fugitive',              -- git
  require 'plugins.tabnine',               -- autocomplete
  require 'plugins.copilot',               -- autocomplete
  require 'plugins.copilot-cmp',           -- autocomplete
  require 'plugins.eyeliner',              -- ff jump
  require 'plugins.colorful-winsep',       -- decora as janelas
  require 'plugins.better-escape',         -- j j <esc>
  require 'plugins.neotest',               -- testes
  require 'plugins.troble',                -- ferramenta de diagnosticos
  require 'plugins.nump',                  -- jump to the line
  require 'plugins.glow',                  -- render markdown
  require 'plugins.multline',              -- multi line edit
  require 'plugins.hlchunk',               -- This plugin adds indentation guides to all lines
  require 'plugins.noice',                 -- This plugin adds indentation guides to all lines
  require 'plugins.modes',                 -- Decorações de linhas prismáticas
  require 'plugins.neogit',                -- git ui
  require 'plugins.boole',                 -- increase<c-a>/decrease number<c-x>
  require 'plugins.themes',                -- themes
  require 'plugins.diffview',              -- git diff
  require 'plugins.swenv',                 -- python virtualenv
  require 'plugins.nvim-colorizer',        -- colorizer
  require 'plugins.color-picker',          -- color picker
  require 'plugins.telescope-extentions',  -- telescope extentions
  require 'plugins.nvim-code-action-menu', -- code action menu
  require 'plugins.telescope-media-files',
  require 'plugins.zen-mode',
  require 'plugins.pydoc', -- python doc
  require 'plugins.marks',
  require 'plugins.twilight',
  require 'plugins.dap-python',
  require 'plugins.vim-bookmarks',
  require 'plugins.neoformat',
  require 'plugins.mini-animation',
  require 'plugins.symbols_outline',
  require 'plugins.sqlite',
  require 'plugins.spectre',
  require 'plugins.surround',
}
require 'options'
require 'keymappings'
