require 'keymappings' -- keymappings
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
  -- require 'plugins.neotest',               -- testes
  require 'plugins.troble',                -- ferramenta de diagnosticos
  require 'plugins.nump',                  -- jump to the line
  require 'plugins.glow',                  -- render markdown
  require 'plugins.noice',                 -- This plugin adds indentation guides to all lines
  require 'plugins.multline',              -- multi line edit
  require 'plugins.hlchunk',               -- This plugin adds indentation guides to all lines
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
  require 'plugins.telescope-media-files', -- telescope media files
  require 'plugins.zen-mode',              -- zen mode
  require 'plugins.pydoc',                 -- python doc
  require 'plugins.marks',                 -- marks
  require 'plugins.twilight',              -- twilight desfoca o resto do texto
  require 'plugins.dap-python',            -- debug python
  require 'plugins.neoformat',             -- formatador
  require 'plugins.mini-animation',        -- animação
  require 'plugins.symbols_outline',       -- symbols outline
  require 'plugins.sqlite',                -- sqlite
  require 'plugins.spectre',               -- search and replace
  require 'plugins.surround',              -- surround text
  require 'plugins.todo-comments',         -- todo comments
  require 'plugins.iron',                  -- repl
  require 'plugins.translate',             -- translate
  require 'plugins.tmux',                  -- tmux
  require 'plugins.tools',                 -- tools
  require 'plugins.neoscroll',             -- smooth scroll
  require 'plugins.live-server',           -- live server
  require 'plugins.codeium',               -- codeium
}
require 'options'                          -- options
