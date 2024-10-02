local kanagawa_paper = require("lualine.themes.kanagawa-paper")

local function apple()
  return [[ ]]
end

local function vim()
  return [[]]
end

local function jeremy()
  return [[Jeremy]]
end
return {
    'nvim-lualine/lualine.nvim',
    config = function()
       require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = kanagawa_paper,
    component_separators = { left = ' ', right = ''},
    section_separators = { left = '', right = ' '},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = { jeremy },
    lualine_c = {'filename'},
    lualine_x = {'filetype', 'selectioncount'},
    lualine_y = { apple },
    lualine_z = { vim }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
    end
}


