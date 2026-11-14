return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = true, replace_netrw = true },
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                width = 30,
                min_width = 30,
              },
            },
            hidden = true,
            win = {
              list = {
                wo = {
                  wrap = true,
                },
                keys = {
                  ["<BS>"] = "explorer_up",
                  ["."] = function(picker)
                    local dir = picker:dir()
                    vim.cmd.tcd(dir)
                    picker:set_cwd(dir)
                    picker:find()
                  end,
                },
              },
            },
          },
        },
      },
    },
  },
}
