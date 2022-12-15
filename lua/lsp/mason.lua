local mason_status, mason = pcall(require, 'mason')
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_status then
  return
end

mason.setup()

mason_lspconfig.setup({
   ensure_installed = { 
    "sumneko_lua",
    "pyright",
    "clangd"
  }
})

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})
