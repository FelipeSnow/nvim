local status, nt = pcall(require, "nvim-tree")

if not status then
  return
end

local maps = require("felipesnow.maps")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nt.setup()

maps.nnoremap("sf", ":NvimTreeToggle<cr>")

