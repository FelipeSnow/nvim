local opt = {
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  smartcase = true,
  undofile = true,
  number = true,
  relativenumber = true,
  signcolumn = 'yes',
  mouse = 'a',
  splitright = true,
  cmdheight = 2,
  updatetime = 50,
  wildmenu = true,
  bg = 'dark',
  scrolloff = 8,
  termguicolors = true,
  swapfile = false,
  hidden = true,
  cursorline = true,
  wrap = false,
  inccommand = 'split',
}

for k, v in pairs(opt) do
  vim.opt[k] = v
end

vim.g.mapleader = " "
