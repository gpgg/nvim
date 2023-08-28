-- utf-8
vim.g.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- hjkl
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- line number
vim.wo.number = true
vim.wo.relativenumber = true

-- highlight cursor line
vim.wo.cursorline = true

-- sign column
vim.wo.signcolumn = 'yes'

-- reference line
vim.wo.colorcolumn = "160"

vim.g.mapleader = 'zz'
vim.g.maplocalleader = 'zz'

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- mouse support
vim.opt.mouse = "a"

-- auto read
vim.o.autoread = true
vim.bo.autoread = true

-- terminal
--vim.keymap.set('n', '<leader>t', ':sp | terminal<CR>')


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- alt + hjkl switch between windows
vim.keymap.set('n', '<leader>h', '<c-w>h')
vim.keymap.set('n', '<leader>l', '<c-w>l')
vim.keymap.set('n', '<leader>j', '<c-w>j')
vim.keymap.set('n', '<leader>k', '<c-w>k')



