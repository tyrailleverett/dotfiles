require'nvim-treesitter.configs'.setup {
    ensure_installed = { "lua", "markdown", "dockerfile", "json", "html", "javascript", "typescript", "typescriptreact", "css", "gitignore", "tsx", "prisma", "php", "svelte" },
  
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },
    autopairs = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    }
  }

  require('ts_context_commentstring').setup {}