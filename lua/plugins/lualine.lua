return {
  'nvim-lualine/lualine.nvim',
  event = { 'BufReadPost', 'BufNewFile', 'VeryLazy' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local trouble = require 'trouble'
    local symbols = trouble.statusline {
      mode = 'lsp_document_symbols',
      groups = {},
      title = false,
      filter = { range = true },
      format = '{kind_icon}{symbol.name:Normal}',
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'rose-pine-alt',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            'mode',
            separator = { left = '', right = '' },
          },
        },
        lualine_b = {
          {
            'branch',
            icon = '',
            separator = { left = '', right = '' },
          },
          {
            'diff',
            separator = { left = '', right = '' },
          },
        },
        lualine_c = table.insert({
          {
            'diagnostics',
            separator = { left = '', right = '' },
          },
          {
            'filename',
          },
        }, {
          symbols.get,
          cond = symbols.has,
        }),
        lualine_x = { 'filesize' },
        lualine_y = {
          {
            'filetype',
            icons_enabled = false,
          },
        },
        lualine_z = {
          {
            'location',
            icon = '',
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { 'lazy' },
    }
  end,
}
