-- Option Configuration
if vim.fn.has('mac') == 1 then
  vim.cmd('language en_US')
end

local set = vim.opt

-- Shared Configuration
set.hls = true
set.ignorecase = true
set.smartcase = true
set.clipboard = 'unnamedplus'
set.whichwrap = 'b,s,h,l,<,>,[,],~'
set.encoding = 'utf-8'
set.fileencodings = 'utf-8'

if not vim.g.vscode then
  set.swapfile = false
  set.syntax = 'on'
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
  set.showmatch = true
  set.laststatus = 2
  set.autoindent = true
  set.smartindent = true
  set.scrolloff = 6
  set.list = true
  set.listchars = { tab = '>-', trail = '-' }
  set.completeopt = 'menuone'
  set.termguicolors = true
  set.incsearch = true
end
