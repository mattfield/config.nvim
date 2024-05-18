return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    opts = {
      variant = 'moon',
      dark_variant = 'moon',
      dim_inactive_windows = false,
      extend_background_behind_borders = false,
      enable = {
        terminal = true,
        legacy_highlights = true,
      },
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
      groups = {
        border = 'pine',
      },
      highlight_groups = {
        CmpWinBorder = { fg = 'overlay', bg = 'base' },
      },
    },
    init = function()
      vim.cmd.colorscheme 'rose-pine'
      vim.cmd.hi 'NonText guifg=#232136'
    end,
  },
}
