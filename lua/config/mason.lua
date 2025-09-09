require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "ruff", "lua_ls" },
})

local lspconfig = require("lspconfig")
local capabilities = require("lsp_utils").get_default_capabilities()

lspconfig.pyright.setup({
    capabilities = capabilities,
})

lspconfig.ruff.setup({
    capabilities = capabilities,
})

lspconfig.lua_ls.setup({
    capabilities = capabilities,
})


