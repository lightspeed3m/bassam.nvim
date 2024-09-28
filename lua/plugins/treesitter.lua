return { -- Syntax Highlighting
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "help",
      "vim",
      "vimdoc",
      "lua",
      "luadoc",
      "c",
      "cpp",
      "c_sharp",
      "printf",
      "javascript",
      "typescript",
      "tsx",
      "html",
      "css",
      "scss",
      "svelte",
      "json",
      "jsdoc",
      "markdown",
      "markdown_inline",
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
}
