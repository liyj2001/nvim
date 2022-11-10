local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  vim.notify('cmp not found')
  return
end

local snip_status_ok, luasnip = pcall(require, 'luasnip')
if not snip_status_ok then
  vim.notify('lupsnip not found')
  return
end

local lspconfig_status, lspconfig = pcall(require,'lspconfig')
if not lspconfig_status then
  return
end

local ui = require('lsp.ui')

-- load freindly-snippets
require('luasnip.loaders.from_vscode').lazy_load()
-- 补全设置
vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = require'../maps'.cmp(cmp),
  -- 使用lspkind-nvim显示类型图标 
  formatting = ui.formatting,
  sources = {
    {name = "nvim_lsp"},
    {name = "luasnip"},
    {name = "buffer"},
    {name = "path"},
    {name = "treesitter"}
  },
  flags = {
    debounce_text_changes = 150
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  experimental = {
    ghost_text = false,
  }
}

cmp.setup.cmdline('/',{
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

cmp.setup.cmdline('?', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':',{
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'cmdline' }
	}, {
		{ name = 'path' }
	})
})
