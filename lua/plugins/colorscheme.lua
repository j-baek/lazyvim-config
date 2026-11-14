return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",
        float_style = "dim",

        colours_override = function(palette)
          palette.bg0 = "#1e2326"
        end,

        on_highlights = function(hl, palette)
          hl.yamlString = { fg = palette.green }
          hl["@string.yaml"] = { fg = palette.green }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}

-- tokyonight-night theme
-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "tokyonight",
--     },
--   },
-- }
