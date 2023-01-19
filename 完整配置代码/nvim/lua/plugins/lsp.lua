require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "sumneko_lua",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sumneko_lua.setup {
  capabilities = capabilities,
}
