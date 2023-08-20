local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap


-- vim.api.nvim_set_keymap('n', '<C-l>', '<Cmd>call VSCodeNotify("workbench.action.navigateRight")<CR>', { noremap = true, silent = true })
keymap('n', '<C-l>', '<Cmd>call VSCodeNotify("workbench.action.navigateRight")<CR>', opts)
keymap('n', '<C-h>', '<Cmd>call VSCodeNotify("workbench.action.navigateLeft")<CR>', opts)

-- keymap('n', 'sv', '<Cmd>call <SID>split("v")<CR>', opts)