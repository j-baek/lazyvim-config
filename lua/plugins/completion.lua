return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter", -- Keeps Enter for confirming completion
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
    },
  },
}
