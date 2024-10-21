-- Allow pressing tab to select multiple files in telescope, and then enter to open them all
-- at once!

local select_one_or_multi = function(prompt_bufnr)
  local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
  local multi = picker:get_multi_selection()
  if not vim.tbl_isempty(multi) then
    require("telescope.actions").close(prompt_bufnr)
    for _, j in pairs(multi) do
      if j.path ~= nil then
        vim.cmd(string.format("%s %s", "edit", j.path))
      end
    end
  else
    require("telescope.actions").select_default(prompt_bufnr)
  end
end

local get_selection = function()
  return vim.fn.getregion(vim.fn.getpos("."), vim.fn.getpos("v"), { mode = vim.fn.mode() })
end

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = { ["<CR>"] = select_one_or_multi },
      },
    },
  },
  keys = function()
    return {
      { "<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Grep (Root Dir)" },
      {
        "<leader>st",
        function()
          require("telescope.builtin").live_grep({ default_text = table.concat(get_selection()) })
        end,
        desc = "Grep (Root Dir)",
        mode = "v",
      },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
    }
  end,
}
