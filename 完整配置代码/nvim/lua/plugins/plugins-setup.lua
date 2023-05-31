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
  "folke/tokyonight.nvim", -- 主题
  "nvim-lualine/lualine.nvim",  -- 状态栏
  "nvim-tree/nvim-tree.lua",  -- 文档树
  "nvim-tree/nvim-web-devicons", -- 文档树图标

  "christoomey/vim-tmux-navigator", -- 用ctl-hjkl来定位窗口
  "nvim-treesitter/nvim-treesitter", -- 语法高亮
  "p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  },

      -- 自动补全
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "hrsh7th/cmp-path", -- 文件路径

  "numToStr/Comment.nvim", -- gcc和gc注释
  "windwp/nvim-autopairs", -- 自动补全括号

  "akinsho/bufferline.nvim", -- buffer分割线
  "lewis6991/gitsigns.nvim", -- 左则git提示

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', -- 文件检索
    dependencies = { {'nvim-lua/plenary.nvim'} } -- requires要改为dependencies
  },

}
local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)
