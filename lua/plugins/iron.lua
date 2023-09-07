-- https://github.com/Vigemus/iron.nvim
--
return {
  "Vigemus/iron.nvim",
  config = function()
    require("iron.core").setup({
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
          sh = {
            -- Can be a table or a function that
            -- returns a table (see below)
            command = { "zsh" }
          },
          python = {
            command = { "ptpython" }
          },
        },
        -- How the repl window will be displayed
        -- See below for more information
        repl_open_cmd = require('iron.view').split.vertical.botright(70),

      },
      -- If the highlight is on, you can change how it looks
      -- For the available options, check nvim_set_hl
      highlight = {
        italic = true
      },
      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
    })
  end
}
