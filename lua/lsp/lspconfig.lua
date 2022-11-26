local lspconfig_status, lspconfig = pcall(require,'lspconfig')
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap

-- 启动lsp快捷键
local on_attach = function(client, bufnr)
  local opts = {noremap = true, silent = true, buffer = bufnr}
  -- 设置快捷键
  keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
  keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
  keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)
  keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
  keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
  keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
  keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)

end

local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["sumneko_lua"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["tsserver"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["pyright"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["clangd"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
