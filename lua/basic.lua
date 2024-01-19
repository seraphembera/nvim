local opt = vim.opt

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- 使用相对行号
opt.number = true
opt.relativenumber = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- Tab缩进2个空格
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
-- 空格代替Tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 配置剪切板
opt.clipboard = "unnamedplus"
