return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      variant = 'moon',
      dark_variant = 'moon',
      dim_inactive_windows = false,
      extend_background_behind_borders = false,
      enable = {
        terminal = true,
        legacy_highlights = false,
      },
    },
    init = function()
      vim.cmd.colorscheme 'rose-pine'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
