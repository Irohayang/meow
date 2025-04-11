return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Load Mason and ensure LSP servers are installed
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright" }, -- Auto-install Pyright
    })

    -- Set up LSP capabilities (for autocompletion via cmp)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Configure Pyright
    require("lspconfig").pyright.setup({
      capabilities = capabilities,
    })
  end,
}

