return {
  "akinsho/bufferline.nvim",
  keys = {
    -- Delete buffers to the left/right should be using directional keys!!!1!
    { "<leader>br", false },
    { "<leader>bh", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" }, -- Disable default delete buffers to the left
    { "<leader>bl", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<S-h>", false }, -- Disable default prev buffer
    { "<S-l>", false }, -- Disable default next buffer
    { "<M-Left>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<M-Right>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<S-M-Left>", "<cmd>BufferLineMovePrev<cr>", desc = "Move Buffer Left" },
    { "<S-M-Right>", "<cmd>BufferLineMoveNext<cr>", desc = "Move Buffer Right" },
  },
}
