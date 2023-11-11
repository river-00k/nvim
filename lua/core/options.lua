vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.whichwrap = "b,s,[,],<,>"
vim.o.autoindent = true
vim.o.smartindent = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true

--clipboaord
vim.opt.clipboard:append{'unnamedplus'}

vim.cmd [[filetype plugin indent on]]

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*.php",
    callback = function()
        vim.opt.autoindent = true
        vim.opt.smartindent = true
    end,
})
