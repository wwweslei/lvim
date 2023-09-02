-- https://github.com/nvim-telescope/telescope-frecency.nvim
-- https://github.com/kkharji/sqlite.lua
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
  'dstein64/vim-startuptime',
}
