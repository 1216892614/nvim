-- 使用相对行号
vim.opt.number = true
vim.opt.relativenumber = true

-- utf8
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- 光标距离上下行位置
vim.opt.scrolloff = 12
vim.opt.sidescrolloff = 12

-- 打开搜索高亮显示和及时显示
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- 打开鼠标
vim.opt.mouse = "a"

-- 默认寄存器为 unnamedplus
vim.opt.clipboard:append("unnamedplus")

-- tab 字符
vim.opt.tabstop = 4
-- tab 键的行为
vim.opt.softtabstop = 4
-- 缩进长度
vim.opt.shiftwidth = 4
-- 插入的 tab 替换成空格
vim.opt.expandtab = true

-- 搜索大小写不敏感，除非包含大写
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 自动重新加载文件
vim.opt.autoread = true
vim.bo.autoread = true

-- 无背景颜色
vim.wo.signcolumn = "no"

---

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = {
    noremap = true,
    silent = true
}
local map = vim.api.nvim_set_keymap

-- 移动 ijkl
map("n", "i", "k", opts)
map("n", "k", "j", opts)
map("n", "j", "h", opts)
map("n", "<C-j>", "b", opts)
map("n", "<C-l>", "e", opts)
map("n", "<C-i>", "<C-u>", opts)
map("n", "<C-k>", "<C-d>", opts)
map("n", "<leader>i", "gg", opts)
map("n", "<leader>k", "G", opts)
map("n", "<leader>j", "^", opts)
map("n", "<leader>l", "$", opts)
map("n", "<C-w>i", "<C-w>k", opts)
map("n", "<C-w>k", "<C-w>j", opts)
map("n", "<C-w>j", "<C-w>h", opts)

map("v", "i", "k", opts)
map("v", "k", "j", opts)
map("v", "j", "h", opts)
map("v", "<C-j>", "b", opts)
map("v", "<C-l>", "e", opts)
map("v", "<C-i>", "k", opts)
map("v", "<C-k>", "j", opts)
map("v", "<leader>i", "gg", opts)
map("v", "<leader>k", "G", opts)
map("v", "<leader>j", "^", opts)
map("v", "<leader>l", "$", opts)

-- 重复一行
map("n", "<A-i>", "yykp", opts)
map("n", "<A-k>", "yyp", opts)

-- 进入编辑
map("n", "u", "i", opts)

-- 撤销
map("n", "z", "u", opts)

-- 附加命令
map("n", "h", "z", opts)

-- 选择并搜索
map("v", "f", "\"fy/<C-r>f<enter>N", opts)
-- 选择一个单词并搜索
map("n", "f", "viw\"fy/<C-r>f<enter>N", opts)
-- 修改文本对象
map("n", "e", "cgn", opts)
-- 重复进行上一步
map("n", "<enter>", ".", opts)

-- fix visual-block
map("n", "<C-v>", "<C-v>", opts)

-- 剪切一行
map("n", "x", "yydd", opts)

-- 删除
map("n", "<backspace>", "hx", opts)
map("n", "x", "hx", opts)
map("n", "<C-x>", "db", opts)

---

print("Hello")