-- https://github.com/mg979/vim-visual-multi
--
return {
  'mg979/vim-visual-multi'
}

-- Basic usage:

-- select words with Ctrl-N (like Ctrl-d in Sublime Text/VvvS Code)
-- create cursors vertically with Ctrl-Down/Ctrl-Up
-- select one character at a time with Shift-Arrows
-- press n/N to get next/previous occurrence
-- press [/] to select next/previous cursor
-- press q to skip current and get next occurrence
-- press Q to remove current cursor/selection
-- start insert mode with i,a,I,A
-- Two main modes:

-- in cursor mode commands work as they would in normal mode
-- in extend mode commands work as they would in visual mode
-- press Tab to switch between «cursor» and «extend» modev
