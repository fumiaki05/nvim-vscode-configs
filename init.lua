--Plugins
require('options')
require('keymaps')
require('plugins')

if vim.g.vscode then

elseif vim.fn.has('mac') == 1 then
  vim.cmd[[colorscheme tokyonight-night]]
else
  vim.cmd[[colorscheme tokyonight-moon]]
end

