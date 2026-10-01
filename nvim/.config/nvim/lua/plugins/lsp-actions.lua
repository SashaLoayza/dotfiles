return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            -- Setting the right-hand side to false completely unbinds it across all LSPs
            { "<leader>ca", false, mode = { "n", "x" } },
          },
        },
      },
    },
  },
  {
    "rachartier/tiny-code-action.nvim",
    dependencies = {},
    event = "LspAttach",
    opts = {},
    keys = {
      {
        "<leader>ca",
        function()
          require("tiny-code-action").code_action()
        end,
        mode = { "n", "x" },
        desc = "Tiny Code Actions",
      },
    },
  },
}
