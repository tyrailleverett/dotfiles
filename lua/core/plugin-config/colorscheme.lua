
require('kanagawa').setup({
    keywordStyle = { italic = false},
})

require("gruvbox").setup({
  bold = false,
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
})

require("tokyonight").setup({})
require("everforest").setup({})

vim.cmd("colorscheme kanagawa")
