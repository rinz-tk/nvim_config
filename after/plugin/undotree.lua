vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

vim.g.undotree_SetFocusWhenToggle = 1

vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand('~/.undodir')
