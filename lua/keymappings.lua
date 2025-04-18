-- configure keymappings for LSP vim.keymap
vim.g.mapleader = " " -- 'vim.g' sets global variables

-- keymaps gT an gt move abas
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"

-- keymap to Neoformat
vim.keymap.set("n", "<leader>F", "<cmd>Neoformat<CR>")

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
-- Add neogit keymap
lvim.builtin.which_key.mappings.g["n"] = {
  "<cmd>:Neogit<cr>", "Neogit"
}
-- Add extra gitsigns keymap
lvim.builtin.which_key.mappings.g["S"] = {
  "<cmd>:Gitsigns stage_buffer<cr>", "Stage buffer"
}

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

-- windows
lvim.builtin.which_key.mappings["W"]   = {
  name = "Windows",
  a = { "<cmd>AerialToggle!<CR> ", "Aerial" },
  v = { "<cmd>vsplit<cr>", "Vertical Split" },
  j = { "<cmd>horizontal resize -12<cr>", "Decrease Window" },
  h = { "<cmd>split<cr>", "Horizontal Split" },
  w = { "<cmd>wincmd w<cr>", "Next Window" },
  q = { "<cmd>q<cr>", "Quit Window" },
  o = { "<cmd>only<cr>", "Only Window" },
  k = { "<cmd>horizontal resize +12<cr>", "Increase Window" },
  z = { "<cmd>ZenMode<cr>", "Zen Mode" },
  t = { "<cmd>Twilight<cr>", "Twilight" },
  s = { "<cmd>SymbolsOutline<cr>", "Symbols Outline" },
}

-- binding for python
lvim.builtin.which_key.mappings["j"]   = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
  F = { "<cmd>:Jaq float<cr>", "Float" },
  q = { "<cmd>:Jaq quickfix<cr>", "Quickfix" },
  t = { "<cmd>:Jaq terminal<cr>", "Terminal" },
  b = { "<cmd>:Jaq bang<cr>", "Bang" },
  f = { "<cmd>: black %<cr>", "Black format" },
}

-- Add marks keymap
lvim.builtin.which_key.mappings["m"]   = {
  name = "Marks",
  m = { "<cmd>MarksListBuf<cr>", "Marks List" },
  M = { "<cmd>MarksListGlobal<cr>", "Marks List Global" },
}

-- function for iron repl send input
vim.keymap.set("n", "gS", function()
  vim.fn.inputsave()
  vim.fn.inputrestore()
  local var = vim.fn.input("Send value: ")
  vim.cmd("IronSend" .. " " .. var)
end)

lvim.builtin.which_key.mappings["i"] = {
  name = "Iron repl",
  a = { "<cmd>IronAttach<cr>", "Attach" },
  h = { "<cmd>IronHide<cr>", "Hide" },
  c = { "<cmd>lua require('iron.core').clear()<cr>", "Clear" },
  e = { "<cmd>lua require('iron.core').exit()<cr>", "Exit" },
  s = { "<cmd>lua require('iron.core').send_line()<cr>", "Send Line" },
  H = { "<cmd>IronFocus<cr>", "Focus" },
  f = { "<cmd>lua require('iron.core').send_file()<cr>", "Send File" },
  v = { "<cmd>lua require('iron.core').visual_send()<cr>", "Visual Send" },
}
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
-- keymap for neotest
lvim.builtin.which_key.mappings["t"] = {
  name = "+Test",
  m = { "<cmd>lua require('neotest').run.run()<cr>", "Test Method" },
  M = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP" },
  f = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" },
  F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" },
  s = { "<cmd>lua require('neotest').run.stop()<cr>", "Test Stop" },
  S = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" },
  b = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "Test Toggle Breakpoint" },
  c = { "<cmd>lua require('dap').continue()<cr>", "Test Continue" },
  C = { "<cmd>lua require('dapui').close()<cr>", "Test Close UI" },
  T = { "<cmd>lua require('dapui').toggle()<cr>", "Test Toggle UI" },
  n = { "<cmd>lua require('dap').step_over()<cr>", "Test Step Over" },
  i = { "<cmd>lua require('dap').step_into()<cr>", "Test Step Into" },
  o = { "<cmd>lua require('dap').step_out()<cr>", "Test Step Out" },
  r = { "<cmd>lua require('dap').repl.toggle()<cr>", "Test REPL" },
}

-- tools
lvim.builtin.which_key.mappings["z"] = {
  name = "Tools",
  M = { "<cmd>Glow<cr>", "Markdown Preview" },
  c = { "<cmd>lua require('colorizer').attach_to_buffer(0, { mode ='background', css = true})<cr>", "Colorizer" },
  C = { "<cmd>ColorizerToggle<cr>", "toggle Colorizer" },
  l = { "<cmd>LiveServerStart<cr>", "Live Server" },
  r = { "<cmd>ColorizerReloadAllBuffers<cr>", "Reload Colorizer" },
  p = { "<cmd>PickColor<cr>", "Pick Color" },
  S = { "<cmd>StartupTime<cr>", "Startuptime" },
  s = { "<cmd>lua require('spectre').toggle()<cr>", "Spectre" },
  t = { "<cmd>Pantran<cr>", "Translate" },
}
