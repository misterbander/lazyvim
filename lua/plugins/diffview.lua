return {
  "sindrets/diffview.nvim",
  opts = {
    enhanced_diff_hl = true,
    keymaps = {
      view = {
        { "n", "q", "<cmd>DiffviewClose<cr>" },
      },
      file_panel = {
        { "n", "q", "<cmd>DiffviewClose<cr>" },
      },
      file_history_panel = {
        { "n", "q", "<cmd>DiffviewClose<cr>" },
      },
    },
    hooks = {
      diff_buf_read = function()
        vim.cmd("norm! gg]ckzt") -- Set cursor on the first hunk
      end,
      diff_buf_win_enter = function()
        vim.opt_local.foldlevel = 99
      end,
    },
  },
  keys = function()
    return {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git Diff (diffview)" },
      { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "Git File History (diffview)" },
    }
  end,
}
