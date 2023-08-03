-- automatically install python syntax highlighting
lvim.builtin.treesitter.ensure_installed = {
  "python",
}

-- setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" }, }
lvim.format_on_save.pattern = { "*.py" }
lvim.format_on_save.enabled = true

-- setup linting
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup { { command = "flake8", filetypes = { "python" } } }

-- setup debug adapter
lvim.builtin.dap.active = true
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)

-- relative number
vim.opt.relativenumber = true  -- set relative numbered lines
require('numb').setup {
  show_numbers = true,         -- Enable 'number' for the window while peeking
  show_cursorline = true,      -- Enable 'cursorline' for the window while peeking
  hide_relativenumbers = true, -- Enable turning off 'relativenumber' for the window while peeking
  number_only = false,         -- Peek only when the command is only a number instead of when it starts with a number
  centered_peeking = true,     -- Peeked line will be centered relative to window
}

-- set theme
--[github_dark, github, github_dark_dimmed, github_dark_high_contrast, github_dark_colorblind, github_dark_tritanopia]
lvim.colorscheme = "github_dark_tritanopia"

-- emmet
local emmet_options = {
  filetypes = {
    "html",
    "typescript",
    "javascript",
    "javascriptreact",
    "xml",
  },
  root_dir = function()
    return vim.loop.cwd()
  end
}

require("lvim.lsp.manager").setup("emmet_ls", emmet_options)

-- LSP bashls
require 'lspconfig'.bashls.setup {}

lvim.builtin.lualine.sections.lualine_a = { "mode" }

-- setup testing
require("neotest").setup({
  adapters = {
    require("neotest-python")({
      -- Extra arguments for nvim-dap configuration
      -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
      dap = {
        justMyCode = false,
        console = "integratedTerminal",
      },
      args = { "--log-level", "DEBUG", "--quiet" },
      runner = "pytest",
    })
  }
})

-- runner configuration

    require('jaq-nvim').setup {
      cmds = {
        -- Uses vim commands
        internal = {
          lua = "luafile %",
          vim = "source %"
        },

        -- Uses shell commands
        external = {
          markdown = "glow %",
          python   = "python3 %",
          go       = "go run %",
          sh       = "sh %"
        }
      },

      behavior = {
        -- Default type
        default     = "float",

        -- Start in insert mode
        startinsert = false,

        -- Use `wincmd p` on startup
        wincmd      = false,

        -- Auto-save files
        autosave    = true
      },

      ui = {
        float = {
          -- See ':h nvim_open_win'
          border   = "none",

          -- See ':h winhl'
          winhl    = "Normal",
          borderhl = "FloatBorder",

          -- See ':h winblend'
          winblend = 0,

          -- Num from `0-1` for measurements
          height   = 0.8,
          width    = 0.8,
          x        = 0.5,
          y        = 0.5
        },

        terminal = {
          -- Window position
          position = "bot",

          -- Window size
          size     = 10,

          -- Disable line numbers
          line_no  = false
        },

        quickfix = {
          -- Window position
          position = "bot",

          -- Window size
          size     = 15
        }
      }
    }
