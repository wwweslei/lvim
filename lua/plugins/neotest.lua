return {
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",

  config = function()
    -- setup testing
    require("neotest").setup({
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false },
        }),
        require("neotest-plenary"),
        require("neotest-vim-test")({
          ignore_file_types = { "python", "vim", "lua" },
        }),
      },
    })
  end
}
