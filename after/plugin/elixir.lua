local remap = require('felipesnow.maps')
local nnoremap = remap.nnoremap


local function config(_config)
  return vim.tbl_deep_extend("force", {
    capabilities =
    require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(_client, bufnr)
      vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

      local bufopts = { noremap = true, silent = true, buffer = bufnr }

      nnoremap('[d', vim.diagnostic.goto_prev, bufopts)
      nnoremap(']d', vim.diagnostic.goto_next, bufopts)
      nnoremap('gl', vim.diagnostic.open_float, bufopts)
      nnoremap("gD", vim.lsp.buf.declaration, bufopts)
      nnoremap("gi", vim.lsp.buf.implementation, bufopts)
      nnoremap("gd", vim.lsp.buf.definition, bufopts)
      nnoremap("gy", vim.lsp.buf.type_definition, bufopts)
      nnoremap("gr", vim.lsp.buf.references, bufopts)
      nnoremap(",ca", vim.lsp.buf.code_action, bufopts)

      nnoremap("K", vim.lsp.buf.hover, bufopts)
      nnoremap("K", vim.lsp.buf.hover, bufopts)
      nnoremap("<leader>f", vim.lsp.buf.format, bufopts)
    end
  }, _config or {})
end

require("elixir").setup(config())
