-- configure keymappings for LSP vim.keymap
vim.g.mapleader = ' ' -- 'vim.g' sets global variables


-- integratedTerminal
lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}


-- keymaps gT an gt move abas
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"


--keymap Jaq runeer
vim.keymap.set('n', '<leader><esc>', ':Jaq quickfix<cr>', { noremap = true })
vim.keymap.set('n', '<leader>n', ':Jaq float<cr>', { noremap = true })


-- keymap for neotest
lvim.builtin.which_key.mappings["d"] = {
  name = "+Test",
  m = { "<cmd>lua require('neotest').run.run()<cr>", "Test Method" },
  M = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP" },
  f = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" },
  F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" },
  S = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" },
}

-- binding for switching
lvim.builtin.which_key.mappings["j"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
  j = { "<cmd>lua require('jaq-nvim').terminal<cr>", "Run" },
}


-- keymap to toggle aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')


-- trouble
-- vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end)
-- vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
-- vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
-- vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
-- vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
-- vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)
lvim.builtin.which_key.mappings["x"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
