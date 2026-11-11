return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = true, replace_netrw = true },
      picker = {
        sources = {
          explorer = {
            win = {
              list = {
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
