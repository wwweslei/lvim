-- https://github.com/jinh0/eyeliner.nvim

return {
  "jinh0/eyeliner.nvim",
  config = function()
    require("eyeliner").setup {
      highlight_on_key = true,
    }
  end,
}

