-- cmp <c-e> hilde box

-- configure keymappings for LSP vim.keymap
vim.g.mapleader = ' ' -- 'vim.g' sets global variables

-- Filename autocompletion
lvim.keys.insert_mode["<C-f>"] = "<C-x><C-f>"

-- keymaps gT an gt move abas
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"

-- copy line corsor endline
lvim.keys.normal_mode["Y"] = "y$"

-- keymap for neotest
lvim.builtin.which_key.mappings["t"] = {
  name = "+Test",
  m = { "<cmd>lua require('neotest').run.run()<cr>", "Test Method" },
  M = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP" },
  f = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" },
  F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" },
  S = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" },
}

-- binding for
lvim.builtin.which_key.mappings["j"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
  F = { "<cmd>:Jaq float<cr>", "Float" },
  q = { "<cmd>:Jaq quickfix<cr>", "Quickfix" },
  t = { "<cmd>:Jaq terminal<cr>", "Terminal" },
  b = { "<cmd>:Jaq bang<cr>", "Bang" },
  f = { "<cmd>: black %<cr>", "Black format" }
}

-- keymap to toggle aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')


-- trouble
lvim.builtin.which_key.mappings["d"]   = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
  a = { "<cmd>CodeActionMenu<cr>", "Code Actions" },
}

-- tools
lvim.builtin.which_key.mappings["z"]   = {
  name = "Tools",
  m = { "<cmd>Glow<cr>", "Markdown Preview" },
  c = { "<cmd>lua require('colorizer').attach_to_buffer(0, { mode ='background', css = true})<cr>", "Colorizer" },
  C = { "<cmd>ColorizerToggle<cr>", "toggle Colorizer" },
  r = { "<cmd>ColorizerReloadAllBuffers<cr>", "Reload Colorizer" },
  p = { "<cmd>PickColor<cr>", "Pick Color" },
}
-- windows
lvim.builtin.which_key.mappings["W"]   = {
  name = "Windows",
  v = { "<cmd>vsplit<cr>", "Vertical Split" },
  h = { "<cmd>split<cr>", "Horizontal Split" },
  w = { "<cmd>wincmd w<cr>", "Next Window" },
  q = { "<cmd>q<cr>", "Quit Window" },
  o = { "<cmd>only<cr>", "Only Window" },
}
-- Add file_browser keymap
lvim.builtin.which_key.mappings.s["f"] = {
  "<cmd>:Telescope file_browser<cr>", "File_browser"
}
-- Add media_files keymap
lvim.builtin.which_key.mappings.s["m"] = {
  "<cmd>:Telescope media_files<cr>", "Media_files"
}
-- Add file project
lvim.builtin.which_key.mappings.s["P"] = {
  "<cmd>:Telescope projects<cr>", "File_browser"
}
-- Add neogit keymap
lvim.builtin.which_key.mappings.g["n"] = {
  "<cmd>:Neogit<cr>", "Neogit"
}
-- Add extra gitsigns keymap
lvim.builtin.which_key.mappings["gS"]  = {
  "<cmd>:Gitsigns stage_buffer<cr>", "Stage buffer"
}
