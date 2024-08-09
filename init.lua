require("weslinvim.remap")
require("weslinvim.packer")
require("config.colorselect")
require("plugin.telescope")
require("plugin.harpoon")
require("plugin.lsp")
require("plugin.nvimcmp")
require("plugin.lualine")
require("plugin.neotree")
require("plugin.emmetnvim")
require("plugin.presencediscord")
require("plugin.completions")
require("plugin.treesitter")
vim.opt.number = true
vim.opt.wrap = true
vim.opt.splitkeep = 'screen'
vim.opt.shiftwidth = 4
vim.opt.numberwidth = 2
vim.opt.wrap = true
vim.opt.showmode = false
vim.opt.syntax = 'enable'
vim.opt.foldmethod = "indent"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.termguicolors = true





























