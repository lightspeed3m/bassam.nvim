return { -- Syntax Highlighting
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "luadoc", "vim", "vimdoc", "javascript", "typescript", "html", "css", "scss", "svelte", "json", "jsdoc", "markdown", "markdown_inline" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
