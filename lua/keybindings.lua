--leader key 
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
	noremap = true,
	silent = true,
}

--本地变量
local map = vim.api.nvim_set_keymap
local keyset = vim.keymap.set
-- 退出
map("i", "jk", "<Esc>", opt)
map("v", "<leader>jk", "<Esc>", opt)
map("c", "jk", "<C-\\><C-n><Esc>", opt)
-- 粘贴
map("i", "<C-p>", "<Esc>pi", opt)
-- 上下滚动浏览
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)
map("n", "J", "<Nop>", opt)
map("n", "K", "<Nop>", opt)
map("v", "<C-j>", "5j", opt)
map("v", "<C-k>", "5k", opt)
-- <leader> + hjkl 窗口之间跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)
-- 新增窗口
map("n", "<leader>sv", "<C-w>v", opt)
map("n", "<leader>sh", "<C-w>s", opt)
map("n", "<leader>s", "Nop", opt)
-- 窗口大小控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 取消高亮
map("n", "<leader>nh", ":nohl<CR>", opt)
-- 单行或多行移动
map("v", "J", ":m '>+1<CR>gv=gv", opt)
map("v", "K", ":m '<-2<CR>gv=gv", opt)
-- 跳到行首或行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)
map("n", "<C-h>", "0", opt)
map("n", "<C-l>", "$", opt)
-- bufferline
-- 左右Tab切换
map("n", "H", ":BufferLineCyclePrev<CR>", opt)
map("n", "L", ":BufferLineCycleNext<CR>", opt)
-- 关闭当前 buffer
map("n", "<leader>bc", ":BufDel<CR>", opt)
-- nvim-tree
map("n", "tt", ":NvimTreeToggle<CR>", opt)
-- toggleterm
map("n", "gg", ":ToggleTerm direction=float <CR>i<Del>clear<CR>clear<CR>", opt)
map("t", "jk", "<C-\\><C-n>:ToggleTerm<CR>", opt)
-- telescope
map("n", "<leader>ff", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
map("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
map("n", "<leader>fb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})
map("n", "<leader>fh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {})
map("n", "<leader>fo", ":Telescope oldfiles<CR>", {})
-- comment
map("n", "gx", "gcc", opt)
-- markdown-preview
vim.cmd('autocmd FileType * lua setKeybinds()')
  function setKeybinds()
    local fileTy = vim.api.nvim_buf_get_option(0, "filetype")
    
    if fileTy == 'markdown' then
      map("n", "mm", ":NvimTreeClose<CR>:MarkdownPreviewToggle<CR>", opt)
    elseif fileTy == 'sh' then
    end
end
