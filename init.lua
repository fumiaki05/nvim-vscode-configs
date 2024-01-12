--Plugins
require('options')
require('keymaps')
require('plugins')

if vim.g.vscode then

elseif vim.fn.has('mac') then

else
  vim.cmd[[colorscheme tokyonight-moon]]
end

