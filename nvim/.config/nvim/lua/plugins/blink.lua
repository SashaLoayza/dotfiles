return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          auto_show = false,
        },
      },
      keymap = {
        preset = "default",
        ["<C-space>"] = {
          function(cmp)
            cmp.show({ providers = { "snippets" } })
          end,
        },
      },
    },
  },
}
