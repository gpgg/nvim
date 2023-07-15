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

local plugins = {
  ----- color themes -----
  "ellisonleao/gruvbox.nvim",
  "rebelot/kanagawa.nvim",
  { 
    "dracula/vim", 
    lazy=false,
  },
  {
    "folke/tokyonight.nvim",
    lazy=false,
    priority=1000,
    opts={},
  },

  ----- sidebar -----
  {
    "nvim-tree/nvim-tree.lua",
    lazy=false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  ----- status line -----
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  "arkav/lualine-lsp-progress",

  -- highlighting
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  {
    "nvim-telescope/telescope.nvim", 
    tag = "0.1.2",
    dependencies = { 
      "nvim-lua/plenary.nvim"
    },
  },
  -- gitsigns
  "lewis6991/gitsigns.nvim",

  -- tabs bufferline
  {
    "akinsho/bufferline.nvim", 
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "moll/vim-bbye",
    },
  },

  -- terminal
  {'akinsho/toggleterm.nvim', version = "*", config = true},

  -- lsp
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- completions
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "saadparwaiz1/cmp_luasnip",
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
  }
}
local opts = {}

require("lazy").setup(plugins, opts)
