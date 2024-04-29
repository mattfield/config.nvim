return {
  {
    'olexsmir/gopher.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    ft = 'go',
    config = function()
      local gopher = require 'gopher.api'
      -- vim.keymap.set('n', '<leader>gii', gopher.impl())
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
}
