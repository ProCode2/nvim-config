return {

  { -- Linting
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local null_ls = require 'null-ls'
      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.prettierd.with {
            filetypes = { 'javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'svelte', 'json', 'css', 'scss', 'html', 'markdown', 'yaml' },
          },
        },
      }
    end,
  },
}
