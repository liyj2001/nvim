local packer = require('packer')

vim.cmd [[packadd packer.nvim]]

packer.startup({
  function(use)
	  -- 插件管理器
    use 'wbthomason/packer.nvim'
    -- 通知插件
    use "rcarriga/nvim-notify"
    -- lsp
    use { "williamboman/mason.nvim" } --安装lsp
    use { "williamboman/mason-lspconfig.nvim" }
    use "neovim/nvim-lspconfig" -- 启用lsp
    use 'hrsh7th/cmp-nvim-lsp'
    use ("onsails/lspkind-nvim") -- icon
    use ("glepnir/lspsaga.nvim")
    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    -- 成对括号
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    }
    -- 自动保存
    use("Pocco81/auto-save.nvim")
    use "nvim-lua/plenary.nvim"
    -- 代码片段
    use "L3MON4D3/LuaSnip"
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"
    -- 主题
    use "ellisonleao/gruvbox.nvim"
    -- 文件管理
    use ('nvim-tree/nvim-tree.lua' )
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
    -- tab
    use({ "akinsho/bufferline.nvim", tag = "v3.*",requires = 'kyazdani42/nvim-web-devicons'})
    -- icons
    use ('kyazdani42/nvim-web-devicons')
    -- 语法高亮
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  end,
  config = {
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    }
  }
})
