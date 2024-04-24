vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.mouse = ''
vim.opt.showmode = false

vim.opt.wrap = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.breakindent = true
vim.opt.formatoptions = 'jcroqlnt'

vim.opt.tabstop = 2 -- Number of spaces tabs count for

vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.termguicolors = true -- True color support

-- vim: ts=2 sts=2 sw=2 et
