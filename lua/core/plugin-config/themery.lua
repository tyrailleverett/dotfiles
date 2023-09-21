require("themery").setup({
    themes = {"gruvbox", "kanagawa", "tokyonight", "everforest"}, 
    themeConfigFile = "~/.config/nvim/lua/settings/theme.lua",
    livePreview = true, 
  })

  vim.keymap.set("n", "<leader>th", ":Themery<CR>")