vim.g.mapleader = ' '

-- 保存本地变量
local map = vim.keymap

-- 相当于:q命令
map.set('n', '<leader>q', '<Cmd>q<CR>')
-- 相当于:w 命令
map.set('n', '<leader>w', '<Cmd>w<CR>')
-- 水平分屏 相当于:vs
map.set('n', 'lr', 'vs<CR>', opt)
-- sh 垂直分屏 相当于:sp
map.set("n", "sh", ":sp<CR>", opt)
-- sc 关闭当前分屏 (s = close)
map.set("n", "sc", "<C-w>c", opt)
-- so 关闭其他分屏 (o = other)
map.set("n", "so", "<C-w>o", opt)
-- 使用 alt + hjkl 在窗口之间跳转
map.set("n", "<A-h>", "<C-w>h", opt)
map.set("n", "<A-j>", "<C-w>j", opt)
map.set("n", "<A-k>", "<C-w>k", opt)
map.set("n", "<A-l>", "<C-w>l", opt)
-- visual模式缩进代码
map.set('v', '<', '<gv', opt)
map.set('v', '>', '>gv', opt)

-- bufferline
-- 左右Tab切换
map.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭bufferline
map.set("n","<C-w>", ":bdelete %<CR>", opt)

-- Telescope
-- 查找文件
map.set("n", "<ff>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map.set("n", "<gf>", ":Telescope live_grep<CR>", opt)

-- 插件快捷键
local pluginKeys = {}

-- nvim-tree
-- alt + m 键打开关闭tree
map.set("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
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
  -- 创建文件
  { key = "a", action = "create" },
  -- 删除文件
  { key = "d", action = "remove" },
  -- 文件重命名
  { key = "r", action = "rename" },
  -- 文件剪切
  { key = "x", action = "cut" },
  -- 文件复制
  { key = "c", action = "copy" },
  -- 文件粘贴
  { key = "p", action = "paste" },
  -- 系统打开
  { key = "s", action = "system_open" },
}

pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    -- 下一个
    ["<C-j>"] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    
    -- 确认
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<Down>"] = "move_selection_next",
    ["<Up>"] = "move_selection_previous",
    -- 历史记录
    ["<C-n>"] = "cycle_history_next",
    ["<C-p>"] = "cycle_history_prev",
    -- 关闭窗口
   ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

return pluginKeys 
