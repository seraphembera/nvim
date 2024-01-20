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
map("v", "jk", "<Esc>", opt)
-- 粘贴
map("i", "pp", "<Esc>pi", opt)
-- nvim-tree
map("n", "<leader>ft", ":NvimTreeToggle<CR>", opt)
-- toggleterm
map("n", "gg", ":ToggleTerm direction=float name=desktop<CR>i<Del>clear<CR>clear<CR>", opt)
map("t", "jk", "<C-\\><C-n>:ToggleTerm<CR>", opt)
-- 上下滚动浏览
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)
map("v", "<C-j>", "5j", opt)
map("v", "<C-k>", "5k", opt)
map("n", "J", "5j", opt)
map("n", "K", "5k", opt)
-- <leader> + hjkl 窗口之间跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)
-- 新增窗口
map("n", "<leader>sv", "<C-w>v", opt)
map("n", "<leader>sh", "<C-w>s", opt)
-- 窗口大小控制
map("n", "sh", ":vertical resize -2<CR>", opt)
map("n", "sl", ":vertical resize +2<CR>", opt)
map("n", "sj", ":resize -2<CR>", opt)
map("n", "sk", ":resize +2<CR>", opt)
-- bufferline
-- 左右Tab切换
map("n", "H", ":BufferLineCyclePrev<CR>", opt)
map("n", "L", ":BufferLineCycleNext<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭当前 buffer
map("n", "<leader>bc", ":bdelete %<CR>", opt)
-- 取消高亮
map("n", "<leader>nh", ":nohl<CR>", opt)
-- 单行或多行移动
map("v", "J", ":m '>+1<CR>gv=gv", opt)
map("v", "K", ":m '>-2<CR>gv=gv", opt)
-- 跳到行首行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)
map("n", "<C-h>", "0", opt)
map("n", "<C-l>", "$", opt)
