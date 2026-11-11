return {
  {
    "Isrothy/neominimap.nvim",
    version = "v3.x.x",
    lazy = false,
    keys = {
      {
        "<leader>um",
        "<cmd>Neominimap Toggle<cr>",
        desc = "Toggle minimap",
      },
    },
    init = function()
      vim.g.neominimap = {
        auto_enable = true,
        layout = "split",
        split = { minimap_width = 10 },
      }
    end,
  },
}
