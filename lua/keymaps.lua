-- Keymaps
vim.g.mapleader = ' '

if vim.g.vscode then
  vim.keymap.set('n', '<leader>o', "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>")
  vim.keymap.set('n', '<leader>d', "<Cmd>call VSCodeNotify('workbench.action.files.save')<CR>")
  vim.keymap.set("n", "H", "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>")
  vim.keymap.set("n", "L", "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>")
else
  vim.keymap.set('i', 'jj', "<Esc>", { silent = true, noremap = true})
  vim.keymap.set('i', 'っj', "<Esc>", { silent = true, noremap = true})
  vim.keymap.set('i', '<C-j>', "<Down>", {noremap = true})
  vim.keymap.set('i', '<C-k>', "<Up>", {noremap = true})
  vim.keymap.set('i', '<C-h>', "<Left>", {noremap = true})
  vim.keymap.set('i', '<C-l>', "<Right>", {noremap = true})
  vim.keymap.set('n', 'あ', "a", {noremap = true})
  vim.keymap.set('n', 'い', "i", {noremap = true})
  vim.keymap.set('n', 'う', "u", {noremap = true})
  vim.keymap.set('n', 'え', "e", {noremap = true})
  vim.keymap.set('n', 'っy', "yy", {noremap = true})
  vim.keymap.set('n', 'っd', "dd", {noremap = true})
  vim.keymap.set('', ';;', "$", {noremap = true})
  vim.keymap.set('i', '{', '{}<Left>', {noremap = true})
  vim.keymap.set('i', '[', '[]<Left>', {noremap = true})
  vim.keymap.set('i', '(', '()<Left>', {noremap = true})
  vim.keymap.set('i', '\"', '\"\"<Left>', {noremap = true})
  vim.keymap.set("i", "\'", "\'\'<Left>", {noremap = true})
  vim.keymap.set('', '<S-h>', '0', {noremap = true})
  vim.keymap.set('', '<S-l>', '$', {noremap = true})
  vim.keymap.set('n', '<leader>s', ':w<CR>', {noremap = true})
  vim.keymap.set('n', 'H', '<Cmd>bp<CR>')
  vim.keymap.set('n', 'L', '<Cmd>bn<CR>')

  -- plugins --

  -- telescope
  vim.keymap.set('n', '<leader>o', function() require('telescope.builtin').find_files { hidden = true } end)

  -- nvim-tree
  vim.keymap.set('n', '<leader>b', '<Cmd>NvimTreeToggle<CR>')

  -- hop.nvim
  vim.keymap.set('n', '<leader>w', '<Cmd>HopChar1<CR>')
  vim.keymap.set('n', '<leader>W', '<Cmd>HopWord<CR>')

end
