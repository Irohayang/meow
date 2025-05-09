-- pull lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
print("Hokazono Iroha")

-- install plugins and options
require("vim-options")
require("lazy").setup("plugins")
vim.cmd([[colorscheme rose-pine]])
vim.opt.termguicolors = true
