-- Automatically install Lazy
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Common Plugins

local plugins = {
  {'kylechui/nvim-surround', config = function() require('nvim-surround').setup() end},
  {
    'smoka7/hop.nvim',
    version = '*',
    opts = {
      keys = 'etovxqpdygfblzhckisuran'
    }
  }
}


if vim.g.vscode then
  -- VSCode specific Plugins
else
  -- Neovim specific Plugins
  vim.list_extend(plugins, {
    'nvim-tree/nvim-web-devicons',
    'folke/tokyonight.nvim',
    {
      'nvim-lualine/lualine.nvim',
      dependencies = {'nvim-tree/nvim-web-devicons'},
      config = function()
        require('lualine-conf')
      end
    },
    {'nvim-tree/nvim-tree.lua', dependencies = {'nvim-tree/nvim-web-devicons'}},
    {'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
      'Exafunction/codeium.vim',
      event = 'BufEnter'
    },
  })
end

require('lazy').setup(plugins, opts)

if vim.g.vscode then
  --Nothing to do
else
  require('nvim_tree')
  require('bufferline').setup()
end
