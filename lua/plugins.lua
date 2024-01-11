-- Automatically install Lazy

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

if vim.g.vscode then
  plugins= {
    {"kylechui/nvim-surround", config = function() require("nvim-surround").setup() end},
    --{"vscode-neovim/vscode-multi-cursor", event = "VeryLazy", opts = {}}
  }
else
  plugins = {
    'nvim-tree/nvim-web-devicons',
    'folke/tokyonight.nvim',
    {"kylechui/nvim-surround", config = function() require("nvim-surround").setup() end},
    {
      'nvim-lualine/lualine.nvim',
      dependencies = {'nvim-tree/nvim-web-devicons'},
      --options = {theme = 'horizon'},
      config = function()
        require('lualine').setup()
      end
    }
  }
end

require("lazy").setup(plugins, opts)
