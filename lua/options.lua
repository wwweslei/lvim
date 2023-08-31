-- automatically install python syntax highlighting
lvim.builtin.treesitter.ensure_installed = {
  "python",
  "bash",
  "lua",
  "javascript",
  "html",
  "css",
  "json",
  "yaml",
  "toml",
  "dockerfile",
  "scss",
}
-- setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black",    filetypes = { "python" } },
  { command = "isort",    filetypes = { "python" } },
  { command = "prettier", filetypes = { "javascript", "typescript", "json", "html", "css", "scss", "markdown" } },
  { command = "taplo",    filetypes = { "toml" } }
}
lvim.format_on_save.pattern = { "*.py", "*.lua", "*.js", "*.ts", "*.html" }
lvim.format_on_save.enabled = true

-- setup linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "ruff",         filetypes = { "python" } },
  { command = "eslint",       filetypes = { "javascript", "typescript" } },
  { command = "stylelint",    filetypes = { "css", "scss" } },
  { command = "markdownlint", filetypes = { "markdown" } },
  { command = "djLint",       filetypes = { "html" } },
  { command = "djLint",       filetypes = { "htmldjango" } },

}

-- setup debug adapter
lvim.builtin.dap.active = true
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  ---@diagnostic disable-next-line: different-requires
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
-- lvim.colorscheme = "github_dark_tritanopia"
lvim.colorscheme = "catppuccin-mocha"
lvim.builtin.lualine.sections.lualine_a = { "mode", "python_env" }
lvim.builtin.lualine.options.theme = "catppuccin"

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
-- Set theme "center telescope"
lvim.builtin.telescope.theme = "ivy"

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "file_browser")
  pcall(telescope.load_extension, "telescope-project")
  pcall(telescope.load_extension, "noice")
  pcall(telescope.load_extension, "frecency")
  pcall(telescope.load_extension, "yank_history")
  -- any other extensions loading
end

lvim.builtin.telescope.defaults.layout_config = {
  width = 0.95,
  height = 0.95,
  prompt_position = "top",
  preview_cutoff = 120,
  preview_width = 0.65,
}
lvim.builtin.which_key.setup.plugins = {
  marks = true,
  registers = true,
  spelling = {
    enabled = true,
    suggestions = 20,
  },
  presets = {
    operators = true,
    motions = true,
    text_objects = true,
    windows = true,
    nav = true,
    z = true,
    g = true,
  },
}
-- autocmd VimEnter silent !tmux set status
vim.cmd("autocmd VimEnter * silent !tmux set status off")
-- autocmd VimLeave start !tmux set status
vim.cmd("autocmd VimLeave * silent !tmux set status on")
