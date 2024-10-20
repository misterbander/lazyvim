return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    ---@diagnostic disable-next-line: inject-field
    require("nvim-treesitter.parsers").get_parser_configs().mcfunction = {
      install_info = {
        url = "~/Minecraft Stuff/tree-sitter-mcfunction", -- local path or git repo
        files = { "src/parser.c" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
        -- optional entries:
        branch = "main", -- default branch in case of git repo if different from master
      },
      filetype = "mcfunction",
    }

    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "graphql", "mcfunction" })
    end
  end,
}
