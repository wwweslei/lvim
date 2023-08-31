-- https://github.com/nvim-telescope/telescope-frecency.nvim
-- https://github.com/kkharji/sqlite.lua
-- https://github.com/gbprod/yanky.nvim#%EF%B8%8F-special-put
--
return {
  "kkharji/sqlite.lua",
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension "frecency"
    end,
    dependencies = { "kkharji/sqlite.lua" },
  },
  {
    'gbprod/yanky.nvim',
    requires = { "kkharji/sqlite.lua" },
    require("yanky").setup({
      ring = {
        history_length = 100,
        storage = "shada",
        sync_with_numbered_registers = true,
        cancel_event = "update",
      },
      picker = {
        select = {
          action = nil, -- nil to use default put action
        },
        telescope = {
          use_default_mappings = true, -- if default mappings should be used
          mappings = nil,              -- nil to use default mappings or no mappings (see `use_default_mappings`)
        },
      },
      system_clipboard = {
        sync_with_ring = true,
      },
      highlight = {
        on_put = true,
        on_yank = true,
        timer = 500,
      },
      preserve_cursor_position = {
        enabled = true,
      },
    })
  },
  'dstein64/vim-startuptime',
}
