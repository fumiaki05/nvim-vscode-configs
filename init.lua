-- Install Lazy
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

-- Option Configuration
local set = vim.opt

if not vim.g.vscode then
  set.swapfile = false
  set.syntax = "on"
  set.encoding = "utf-8"
  set.fileencodings = "utf-8"
  set.updatetime = 300
  set.title = true
  -- UI
  set.number = true
  set.ruler = true
  set.cursorline = true
  -- Tab Control
  set.shiftwidth = 2
  set.tabstop = 2
  set.expandtab = true
  --
  set.hls = true
  set.smartcase = true
  set.clipboard = "unnamedplus"
  set.showmatch = true
  set.laststatus = 2
  set.autoindent = true
  set.smartindent = true
  set.scrolloff = 6
  set.list = true
  set.listchars = { tab = ">-", trail = "-" }
  set.completeopt = "menuone"
  set.termguicolors = true
end

-- Keymaps
vim.g.mapleader = "<Space>"

if vim.g.vscode then
  --vim.keymap.set("n", "<leader>o", "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>")
  --vim.keymap.set("n", "<leader>d", "<Cmd>call VSCodeNotify('workbench.action.files.save')<CR>")
  --vim.keymap.set("n", "H", "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>")
  --vim.keymap.set("n", "L", "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>")
else
  vim.keymap.set('i', 'jj', "<Esc>", { silent = true, noremap = true})
  vim.keymap.set('i', 'ｊｊ', "<Esc>", { silent = true, noremap = true})
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
  --vim.keymap.set("n", "<leader>o", function() require("telescope.builtin").find_files { hidden = true } end)
  --vim.keymap.set("n", "<leader>d", "<Cmd>bd<CR>")
  --vim.keymap.set("n", "H", "<Cmd>bp<CR>")
  --vim.keymap.set("n", "L", "<Cmd>bn<CR>")
end

--Plugins
local plugins = {
  {"kylechui/nvim-surround", config = function() require("nvim-surround").setup() end}
}

require("lazy").setup(plugins, opts)
