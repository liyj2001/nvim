local packer = require('packer')

packer.startup({
  function(use)
	  -- 插件管理器
    use { 'wbthomason/packer.nvim' }
    -- 通知插件
    use { "rcarriga/nvim-notify" }
    -- lsp
    use { "williamboman/mason.nvim" } --安装lsp
    use { "williamboman/mason-lspconfig.nvim" }
    use { "neovim/nvim-lspconfig" } -- 启用lsp
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { 'mfussenegger/nvim-jdtls' }
    -- cmp
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { "hrsh7th/cmp-nvim-lua" }
    -- 成对括号
    use {"windwp/nvim-autopairs"}
    use { "nvim-lua/plenary.nvim" }
    -- 代码片段
    use { "L3MON4D3/LuaSnip" }
    use { "rafamadriz/friendly-snippets" }
    -- 主题
    use { "ellisonleao/gruvbox.nvim" }
    -- 文件管理
    use { 'nvim-tree/nvim-tree.lua' }
    -- tab
    use { "akinsho/bufferline.nvim" }
    -- icons
    use { 'kyazdani42/nvim-web-devicons'}
    -- 语法高亮
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- 缩进Blankline
    use { "lukas-reineke/indent-blankline.nvim" }
    -- 注释
    use { "numToStr/Comment.nvim" }
  end,
  config = {
    display = {
    -- 打开一个弹窗
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    }
  }
})
