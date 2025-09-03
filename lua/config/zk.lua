require('zk').setup({
  -- can be 'telescope', 'fzf', 'fzf_lua' or 'select'
  picker = 'telescope',

  lsp = {
    -- Lsp settings for zk
    config = {
      cmd = { 'zk', 'lsp' },
      name = 'zk',
      -- on_attach = ...
    },
  },
})
