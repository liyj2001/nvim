-- 显示行号
vim.opt.number = true

-- 高亮所在行
vim.opt.cursorline = true

-- 指定文件格式 vim.srciptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- 移动光标时上下保留5行
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- 搜索时不要高亮
vim.opt.hlsearch = true
-- 边输入边搜索
vim.opt.incsearch = true

-- 允许在neovim中使用鼠标
vim.opt.mouse = 'a'

-- 缩进2个空格等于一个tab
vim.opt.tabstop = 4
vim.bo.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftround = true

-- >> << 时移动长度
vim.opt.shiftwidth = 2
vim.bo.shiftwidth = 2

-- 新行对齐当前行，空格替代tab
vim.opt.expandtab = true
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.opt.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 当文件被外部修改时自动加载
vim.opt.autoread = true
vim.bo.autoread = true

-- 是否显示左侧图标指示列
vim.wo.signcolumn = 'yes'

-- 禁止创建备份文件
vim.opt.backup = false
vim.opt.writebackup = false
-- 禁止swap文件创建
vim.opt.swapfile = false

-- 补全增强
vim.opt.wildmenu = true

-- 命令号高为1，提供足够的显示空间
vim.opt.cmdheight = 1

-- 配置剪切板
vim.opt.clipboard = "unnamedplus"
-- 禁止折行
vim.wo.wrap = false
-- 样式
vim.opt.termguicolors = true
vim.opt.termguicolors = true
-- 设置 timeoutlen 为等待键盘快捷键连击时间1000毫秒
vim.opt.timeoutlen = 1000

-- 始终显示选项卡
vim.opt.showtabline = 0
-- 不可见字符的显示
vim.opt.list = true
vim.opt.listchars = "space:."
-- 补全最多显示10行
vim.opt.pumheight = 10
-- 持久撤销
vim.opt.undofile = true
-- 提示速度
vim.opt.updatetime = 300
-- 补全设置
vim.opt.completeopt = { "menuone", "noselect" }


-- 主题
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
