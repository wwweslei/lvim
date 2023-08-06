-- https://github.com/nvim-telescope/telescope-project.nvim

return {
  "nvim-telescope/telescope-project.nvim",
  event = "BufWinEnter",
  setup = function()
    vim.cmd [[packadd telescope.nvim]]
  end,
}
