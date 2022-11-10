local mason_status, mason = pcall(require, 'mason')
if not mason_status then
  vim.notify('mason not found')
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_status then
  vim.notify('mason-lspconfig not found')
  return
end

mason.setup()

mason_lspconfig.setup({
   ensure_installed = { 
    "sumneko_lua",
    "tsserver",
    "html",
    "cssls",
    "pyright",
    "clangd"
  }
})
