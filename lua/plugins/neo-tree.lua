return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
        window = {
          mappings = {
            ["-"] = "navigate_up",
            ["<bs>"] = "close_node",
          },
        },
      },
    },
    keys = function()
      return {
        {
          "<leader>e",
          function()
            require("neo-tree.command").execute({ toggle = true })
          end,
          desc = "Explorer Neotree (Root Dir)",
        },
        {
          "<M-0>",
          function()
            require("neo-tree.command").execute({})
          end,
          desc = "Explorer Neotree (Root Dir)",
        },
      }
    end,
  },
}
