local opt = vim.opt

-- Tab / Identations
opt.wrap = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
opt.cmdheight = 1
-- opt.completeopt = "menuone, noinsert, noselect"

-- Behaviours
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
-- opt.backspace = "indent, eol, start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false  
opt.iskeyword:append("-")  -- ignore '-' while deleting
opt.mouse:append('a')  -- mouse will be available at all modes
opt.clipboard:append("unnamedplus")
opt.modifiable = true  -- automatically go to insert mode
