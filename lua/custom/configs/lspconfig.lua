local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.ansiblels.setup{
  filetypes = { "yaml.ansible", "yaml" },
  settings = {
    ansible = {
      ansible = {
        path = "ansible"
      },
      executionEnvironment = {
        enabled = false
      },
      python = {
        interpreterPath = "python"
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
          path = "ansible-lint"
        }
      }
    }
  }
}

-- 
-- lspconfig.pyright.setup { blabla}
