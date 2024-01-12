--leader key 
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
	noremap = true,
	silent = true,
}

--本地变量
local map = vim.api.nvim_set_keymap

map("i", "jk", "<Esc>", opt)
-- nvim-tree
map("n", "<leader>n", ":NvimTreeToggle<CR>", opt)
-- toggleterm
map("n", "<leader>g", ":ToggleTerm<CR>", opt)
map("t", "jk", "<C-\\><C-n>", opt)
-- 上下滚动浏览
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)
map("v", "<C-j>", "5j", opt)
map("v", "<C-k>", "5k", opt)
-- <leader> + hjkl 窗口之间跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)
-- bufferline
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭当前 buffer
map("n", "<leader>bc", ":bdelete %<CR>", opt)
