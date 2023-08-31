-- cmp <c-e> hilde box

-- configure keymappings for LSP vim.keymap
vim.g.mapleader = ' ' -- 'vim.g' sets global variables

-- Filename autocompletion
lvim.keys.insert_mode["<C-f>"] = "<C-x><C-f>"

-- keymaps gT an gt move abas
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"

-- keymap for neotest
lvim.builtin.which_key.mappings["t"] = {
  name = "+Test",
  m = { "<cmd>lua require('neotest').run.run()<cr>", "Test Method" },
  M = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP" },
  f = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" },
  F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" },
  S = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" },
  s = { "<cmd>lua require('neotest').run.stop()<cr>", "Test Stop" },
  b = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "Test Toggle Breakpoint" },
  c = { "<cmd>lua require('dap').continue()<cr>", "Test Continue" },
  C = { "<cmd>lua require('dapui').close()<cr>", "Test Close UI" },
  T = { "<cmd>lua require('dapui').toggle()<cr>", "Test Toggle UI" },
  n = { "<cmd>lua require('dap').step_over()<cr>", "Test Step Over" },
  i = { "<cmd>lua require('dap').step_into()<cr>", "Test Step Into" },
  o = { "<cmd>lua require('dap').step_out()<cr>", "Test Step Out" },
  r = { "<cmd>lua require('dap').repl.toggle()<cr>", "Test REPL" },
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
-- yanky keymap
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyCycleForward)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyCycleBackward)")

-- keymap to toggle aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
-- keymap to only Window
vim.keymap.set('n', '<leader>o', '<cmd>only<CR>')
-- keymap to Neoformat
vim.keymap.set('n', '<leader>F', '<cmd>Neoformat<CR>')
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
  M = { "<cmd>Glow<cr>", "Markdown Preview" },
  c = { "<cmd>lua require('colorizer').attach_to_buffer(0, { mode ='background', css = true})<cr>", "Colorizer" },
  C = { "<cmd>ColorizerToggle<cr>", "toggle Colorizer" },
  r = { "<cmd>ColorizerReloadAllBuffers<cr>", "Reload Colorizer" },
  p = { "<cmd>PickColor<cr>", "Pick Color" },
  S = { "<cmd>StartupTime<cr>", "Startuptime" },
  s = { "<cmd>lua require('spectre').toggle()<cr>", "Spectre" },
}
-- windows
lvim.builtin.which_key.mappings["i"]   = {
  name = "Windows",
  v = { "<cmd>vsplit<cr>", "Vertical Split" },
  h = { "<cmd>split<cr>", "Horizontal Split" },
  w = { "<cmd>wincmd w<cr>", "Next Window" },
  q = { "<cmd>q<cr>", "Quit Window" },
  o = { "<cmd>only<cr>", "Only Window" },
  j = { "<cmd>horizontal resize -12<cr>", "Decrease Window" },
  k = { "<cmd>horizontal resize +12<cr>", "Increase Window" },
  z = { "<cmd>ZenMode<cr>", "Zen Mode" },
  t = { "<cmd>Twilight<cr>", "Twilight" },
  s = { "<cmd>SymbolsOutline<cr>", "Symbols Outline" },
}
-- Add marks keymap
lvim.builtin.which_key.mappings.b["m"] = {
  "<cmd>MarksListBuf<cr>", "Marks List"
}
-- Add marks keymap
lvim.builtin.which_key.mappings.b["M"] = {
  "<cmd>MarksQFListGlobal<cr>", "Marks Global"
}
-- Add file_browser keymap
lvim.builtin.which_key.mappings.s["F"] = {
  "<cmd>:Telescope file_browser<cr>", "File_browser"
}
-- add frecency keymap
lvim.builtin.which_key.mappings.s["R"] = {
  "<cmd>:Telescope frecency<cr>", "Frecency"
}
-- Add marks keymap
lvim.builtin.which_key.mappings.s["m"] = {
  "<cmd>:Telescope marks<cr>", "Marks"
}
-- Add media_files keymap
lvim.builtin.which_key.mappings.s["f"] = {
  "<cmd>:Telescope media_files<cr>", "Media_files"
}
-- Add file project
lvim.builtin.which_key.mappings.s["P"] = {
  "<cmd>:Telescope projects<cr>", "File_browser"
}
lvim.builtin.which_key.mappings.s["y"] = {
  "<cmd>:Telescope yank_history<cr>", "Yank_history"
}
-- Add neogit keymap
lvim.builtin.which_key.mappings.g["n"] = {
  "<cmd>:Neogit<cr>", "Neogit"
}
-- Add extra gitsigns keymap
lvim.builtin.which_key.mappings["gS"]  = {
  "<cmd>:Gitsigns stage_buffer<cr>", "Stage buffer"
}
