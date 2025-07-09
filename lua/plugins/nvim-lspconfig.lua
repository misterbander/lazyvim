return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      templ = {},
      gopls = {
        settings = {
          gopls = {
            analyses = {
              ST1000 = false,
            },
          },
        },
      },
    },
  },
}
