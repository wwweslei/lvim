-- https://github.com/jinh0/eyeliner.nvim
-- Move faster with unique f/F indicators for each word on the line.
return {
  "jinh0/eyeliner.nvim",
  config = function()
    require("eyeliner").setup {
      highlight_on_key = true,
    }
  end,
}

