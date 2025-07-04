local status, toggleterm = pcall(require, "toggleterm")
if (not status) then return end

toggleterm.setup({
  -- size can be a number or function which is passed the current terminal
  size = 20,
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'horizontal'
})

-- Set up keymapping for Ctrl+t
vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>')
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>')
