-- https://github.com/zbirenbaum/copilot-cmp
return {
  "zbirenbaum/copilot-cmp",
  after = { "copilot.lua" },
  config = function()
    require("copilot_cmp").setup()
  end,
}
