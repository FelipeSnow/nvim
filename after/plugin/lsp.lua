local remap = require('felipesnow.maps')
local nnoremap = remap.nnoremap
local vnoremap = remap.vnoremap

local lsp = require('lspconfig')
local navic = require("nvim-navic")


local function config(_config)
  return vim.tbl_deep_extend("force", {
    capabilities =
    require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(_client, bufnr)
      navic.attach(_client, bufnr)
      vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
      local bufopts = { noremap = true, silent = true, buffer = bufnr }

      nnoremap(']d', vim.diagnostic.goto_prev, bufopts)
      nnoremap('[d', vim.diagnostic.goto_next, bufopts)
      nnoremap('gl', vim.diagnostic.open_float, bufopts)
      nnoremap("gD", vim.lsp.buf.declaration, bufopts)
      nnoremap("gi", vim.lsp.buf.implementation, bufopts)
      nnoremap("gd", vim.lsp.buf.definition, bufopts)
      nnoremap("gy", vim.lsp.buf.type_definition, bufopts)
      nnoremap("gr", vim.lsp.buf.references, bufopts)
      nnoremap(",ca", vim.lsp.buf.code_action, bufopts)
      vnoremap(",ca", vim.lsp.buf.range_code_action, bufopts)
      nnoremap(",rs", vim.lsp.buf.rename, bufopts)
      nnoremap("K", vim.lsp.buf.hover, bufopts)
      nnoremap("<leader>f", vim.lsp.buf.format, bufopts)
    end
  }, _config or {})
end

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-j>'] = cmp.mapping.confirm({ select = true }),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete()
  }),

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
  }
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua", "tsserver" }
})

lsp['tsserver'].setup(config(
))

lsp.sumneko_lua
    .setup(config({ settings = {
      Lua = {
        diagnostics = {
          globals = { "vim", "use" },
          disbale = {"lowercase-global"}
        }
      }
    } }))


require("flutter-tools").setup(config())

lsp.jdtls.setup(config())

