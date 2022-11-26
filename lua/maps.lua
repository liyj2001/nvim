vim.g.mapleader = ' '

-- 保存本地变量
local keymap = vim.keymap.set
local opts = { silent = true }

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
-- visual模式缩进代码
keymap('v', '<', '<gv', opt)
keymap('v', '>', '>gv', opt)

-- bufferline
-- 左右Tab切换
keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭bufferline
keymap("n","<C-w>", ":bdelete %<CR>", opt)

-- Telescope
-- 查找文件
keymap("n", "<ff>", ":Telescope find_files<CR>", opt)
-- 全局搜索
keymap("n", "<gf>", ":Telescope live_grep<CR>", opt)

-- 插件快捷键
local pluginKeys = {}

-- nvim-tree
-- alt + m 键打开关闭tree
keymap("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  -- 刷新文件夹
  { key = "<F5>", action = "refresh" },
  -- 系统打开
  { key = "s", action = "system_open" },
}


return pluginKeys 
