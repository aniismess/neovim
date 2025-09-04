-- This file configures none-ls.nvim, a plugin to run linters and formatters.
-- For the formatters and linters to work, you need to have a configuration file
-- in your project's root directory. For example, .prettierrc for Prettier and
-- .eslintrc.js for ESLint.

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
    },
    -- configure format on save
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            local augroup = vim.api.nvim_create_augroup("LspFormat", { clear = true })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
