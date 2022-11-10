local nvim_treesitter_status, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not nvim_treesitter_status then
  vim.notify('nvim-treesitter not found')
  return
end

nvim_treesitter.setup {
  -- 安装 language parser
  ensure_installed = {"css", "typescript","javascript", "lua", "python", "c", "cpp"},
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
  indent = {
    enable = true
  }
}
