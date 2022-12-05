local nnoremap = require('felipesnow.maps').nnoremap

require("project_nvim").setup{
  manual_mode = false
}

require'telescope'.load_extension("projects")

nnoremap(",P", "<cmd>Telescope projects<CR>")

