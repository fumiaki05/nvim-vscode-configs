--Plugins
require('options')
require('keymaps')
require('plugins')

if vim.g.vscode then

else
  vim.g.codeium_enabled = false
  if vim.fn.has('mac') == 1 then
    vim.cmd[[colorscheme tokyonight-night]]
  else
    vim.cmd[[colorscheme tokyonight-moon]]
end

