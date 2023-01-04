-- 保存本地变量
local keymap = vim.keymap.set
local opts = { silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- 水平分屏 相当于:vs
keymap('n', 'lr', 'vs<CR>', opt)
-- sh 垂直分屏 相当于:sp
keymap("n", "sh", ":sp<CR>", opt)
-- sc 关闭当前分屏 (s = close)
keymap("n", "sc", "<C-w>c", opt)
-- so 关闭其他分屏 (o = other)
keymap("n", "so", "<C-w>o", opt)
-- 使用 alt + hjkl 在窗口之间跳转
keymap("n", "<A-h>", "<C-w>h", opt)
keymap("n", "<A-j>", "<C-w>j", opt)
keymap("n", "<A-k>", "<C-w>k", opt)
keymap("n", "<A-l>", "<C-w>l", opt)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- bufferline
-- 左右Tab切换
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- 关闭bufferline
keymap("n", "<C-w>", "<cmd>Bdelete!<CR>", opts)

-- 粘贴
keymap("v", "p", '"_dP', opts)

-- 按jk相当于esc键
keymap("i", "jk", "<ESC>", opts)

-- visual模式缩进代码
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- nvim-tree
keymap("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- 退出与保存
-- 退出
keymap("n", "q", ":qa<CR>", opts)
-- 强制退出
keymap("n", "qq", ":q!<CR>", opts)
-- 保存
keymap("n", "ww", ":w<CR>", opts)

-- 全文格式化代码
keymap("n", "<leadner>fm", "gg=G<C-o>", opts)

-- 代码运行
keymap('n', '<leader>r', ':RunCode<CR>', opts)
keymap('n', '<leader>rf', ':RunFile<CR>', opts)