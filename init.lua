require('felipesnow')
local maps = require('felipesnow.maps')
if (vim.fn.has("win32") and vim.fn.has("nvim")) then
  maps.nnoremap("<C-z>", "<nop>")
  maps.inoremap("<C-z>", "<nop>")
  maps.vnoremap("<C-z>", "<nop>")
  maps.snoremap("<C-z>", "<nop>")
  maps.xnoremap("<C-z>", "<nop>")
  maps.cnoremap("<C-z>", "<nop>")
  maps.onoremap("<C-z>", "<nop>")
end
