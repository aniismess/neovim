vim.opt.conceallevel = 2
vim.opt.wrap = true
vim.opt.spell = true

-- Keymap to toggle markdown preview
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { silent = true, buffer = true, desc = "Toggle markdown preview" })



