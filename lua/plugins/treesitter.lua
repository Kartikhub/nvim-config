return {
  {"nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "lua", "vim", "javascript", "java", "typescript" ,"json", "rust", "markdown", "luadoc", "vimdoc"},
        highlight = { enable = true },
        indent = { enable = true }
      })
    end
  }
}
