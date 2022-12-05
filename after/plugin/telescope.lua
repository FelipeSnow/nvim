local status, telescope = pcall(require, 'telescope')

if not status then
  return
end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local nnoremap = require('felipesnow.maps').nnoremap
local vnoremap = require('felipesnow.maps').vnoremap


telescope.setup({
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  },
  defaults = {
    mappings = {
      i = {
        ["<c-q>"] = actions.send_selected_to_qflist
      }
    },
    path_display = {
      "truncate"
    },
  }
})

nnoremap(",f", function()
  builtin.find_files({
    file_ignore_patterns = {
      ".git/*",
      "node_modules/*",
      "*.lock",
      "*.log",
      "_build/*",
    },
  })
end)


vnoremap(",,", function()
  builtin.resume()
end)

nnoremap(",,", function()
  builtin.resume()
end)

nnoremap("\\\\", function()
  builtin.buffers()
end)

nnoremap("<leader>g", function()
  builtin.grep_string()
end)

vnoremap("<leader>g", function()
  builtin.grep_string()
end)

nnoremap(",g", function()
  builtin.live_grep({
    file_ignore_patterns = {
      ".git/*",
      "node_modules/*",
      "*.lock",
      "*.log",
      "_build/*",
    },
  })
end)

vnoremap(",g", function()
  builtin.live_grep()
end)

nnoremap(",H", function()
  builtin.help_tags()
end)
