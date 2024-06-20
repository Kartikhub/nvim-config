vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader =" "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local opts = {}

require("lazy").setup("plugins")

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "lua", "vim", "javascript", "java", "typescript" ,"json"},
  highlight = { enable = true },
  indent = { enable = true }
})




