-- https://github.com/nvim-telescope/telescope-media-files.nvim
--
return {
  "nvim-telescope/telescope-media-files.nvim",
  config = function()
    require("telescope").load_extension("media_files")
  end,
}
