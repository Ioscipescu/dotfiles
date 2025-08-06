local colors = require("catppuccin.palettes").get_palette "mocha"

return {
  "petertriho/nvim-scrollbar",
  event = "VeryLazy",
  config = function()
    require("scrollbar").setup {
      handle = {
        color = colors.overlay0,
      },
      maks = {
        Search = { color = colors.green },
        Error = { color = colors.red },
        Warn = { colors = colors.yellow },
        Info = { colors = colors.teal },
        Hint = { colors = colors.mauve },
        Misc = { colors = colors.lavender },
      },
    }
  end,
}
