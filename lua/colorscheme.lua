return {
  'rebelot/kanagawa.nvim',
  opts = {
    transparent = true,
  },
  priority = 1000, -- Higher priority for the colorscheme to start before plugins.
  init = function()
    -- Load the colorscheme here.
    vim.cmd.colorscheme 'kanagawa-dragon'
  end,
}
