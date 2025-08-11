local opt = vim.opt

opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"
opt.scrolloff = 10 -- number of lines to keep above/below cursor
opt.mouse = "" -- disable mouse support
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.undofile = true -- Enable undo for a file even if it was closed
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.shiftwidth = 2 -- number of spaces inserted for each indentation level
opt.tabstop = 2 -- number of spaces inserted for tab character
opt.softtabstop = 2 -- number of spaces inserted for <Tab> key
opt.smartindent = true -- enable smart indentation
opt.breakindent = true -- enable line breaking indentation
opt.wrap = true -- disable line wrapping
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.cursorline = true -- highlight the current cursor line
opt.termguicolors = true -- Enable termguicolors.
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
opt.swapfile = false -- Disable the use of swapfile
--Enable undercurl
vim.cmd('let &t_Cs = "\\e[4:3m"')
vim.cmd('let &t_Ce = "\\e[4:0m"')
