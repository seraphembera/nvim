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
-- 
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{import = "plugins.bufferline"},
		{import = "plugins.coc"},
		{import = "plugins.color"},
		{import = "plugins.comment"},
		{import = "plugins.dashboard"},
		{import = "plugins.indentline"},
		{import = "plugins.leetcode"},
		{import = "plugins.lualine"},
		{import = "plugins.markdown-preview"},
		{import = "plugins.noice"},
		{import = "plugins.nvim-bufdel"},
		{import = "plugins.nvim-tree"},
		{import = "plugins.telescope"},
		{import = "plugins.toggleterm"},
		{import = "plugins.treesitter"},
	}
})
