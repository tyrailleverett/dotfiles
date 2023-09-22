local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    'mrjones2014/legendary.nvim',
    priority = 10000,
    lazy = false,
  },
    "github/copilot.vim",
      {
        'nvim-telescope/telescope.nvim',
          dependencies = { 'nvim-lua/plenary.nvim' }
        },
        {
            "nvim-tree/nvim-tree.lua",
            version = "*",
            lazy = false,
            dependencies = {
              "nvim-tree/nvim-web-devicons",
            },
            config = function()
              require("nvim-tree").setup {}
            end,
          },
          'zaldih/themery.nvim',
          {
            'glepnir/dashboard-nvim',
            event = 'VimEnter',
            config = function()
              require('dashboard').setup {
                
              }
            end,
            dependencies = { {'nvim-tree/nvim-web-devicons'}}
          },
          'windwp/nvim-autopairs',
            event = "InsertEnter",
            opts = {},
          "virchau13/tree-sitter-astro",
          'wuelnerdotexe/vim-astro',
          {
            'nvim-treesitter/nvim-treesitter',
            dependencies = {
              'JoosepAlviste/nvim-ts-context-commentstring',
            },
          },
          {
            {'akinsho/toggleterm.nvim', version = "*", config = true}
          },
           {
            "folke/trouble.nvim",
            dependencies = { "nvim-tree/nvim-web-devicons" },
            opts = {},
           },
           {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons', opts = true }
          },
          "rebelot/kanagawa.nvim",
          { "ellisonleao/gruvbox.nvim", priority = 1000 },
          'windwp/nvim-ts-autotag',
          "williamboman/mason.nvim",
          "williamboman/mason-lspconfig.nvim",
    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    "folke/neodev.nvim",
    {
      {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
      {
        'neovim/nvim-lspconfig',
        dependencies = {
          {'hrsh7th/cmp-nvim-lsp'},
        },
      },
      {
        'hrsh7th/nvim-cmp',
        dependencies = {
          {'L3MON4D3/LuaSnip'},
        }
      }
    },
    {'gnikdroy/projections.nvim', branch="pre_release"},
    "lukas-reineke/indent-blankline.nvim",
    {
      "nvimdev/guard.nvim",
      dependencies = {
          "nvimdev/guard-collection",
      },
      "jose-elias-alvarez/null-ls.nvim",
      {
        "kylechui/nvim-surround",
        version = "*", 
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
            })
        end
    },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
      "neanias/everforest-nvim",
      {
        "shortcuts/no-neck-pain.nvim",
        opts = {
          autocmds = {
            enableOnVimEnter = true,
          }
        },
      },
      "lewis6991/gitsigns.nvim",
      {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
        end,
        opts = {
        }
      },
      "windwp/nvim-ts-autotag",
      "mbbill/undotree",
      {
        'stevearc/dressing.nvim',
        opts = {},
      },
      {
        'numToStr/Comment.nvim',
        opts = {
        },
        lazy = false,
    },
    {
      "folke/flash.nvim",
      event = "VeryLazy",
      ---@type Flash.Config
      opts = {},
      -- stylua: ignore
      keys = {
        { "s", mode = { "n", "o", "x" }, function() require("flash").jump({ search = {
          mode = function(str)
            return "\\<" .. str
          end,
        },}) end, desc = "Flash" },
        { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
        { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
        { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
      },
    }
  }
  })
