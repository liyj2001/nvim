-- 显示行号
vim.o.number = true

-- 高亮所在行
vim.o.cursorline = true

-- 指定文件格式 vim.srciptencoding = 'utf-8'
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- 移动光标时上下保留5行
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5

-- 搜索时不要高亮
vim.o.hlsearch = true
-- 边输入边搜索
vim.o.incsearch = true

-- 鼠标支持
vim.o.mouse = 'a'

-- 缩进2个空格等于一个tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- >> << 时移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 当文件被外部修改时自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 是否显示左侧图标指示列
vim.wo.signcolumn = 'no'

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- 补全增强
vim.o.wildmenu = true

-- 命令号高为2，提供足够的显示空间
vim.o.cmdheight = 2

-- 配置剪切板
vim.opt.clipboard = "unnamedplus"

-- 样式
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 设置 timeoutlen 为等待键盘快捷键连击时间600毫秒
vim.o.timeoutlen = 600

-- 主题
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
