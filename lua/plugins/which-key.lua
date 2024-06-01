return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    opts.defaults["<leader>f"] = nil -- Disable default <leader>f group name
  end,
  keys = function()
    return {}
  end,
}
