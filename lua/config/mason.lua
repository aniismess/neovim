require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "tsserver", "pyright", "ruff", "lua_ls" },
})

local lspconfig = require("lspconfig")
local capabilities = require("lsp_utils").get_default_capabilities()


