local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
-- python
  b.formatting.black,

  -- rust
  b.formatting.rustfmt,

  -- go
  b.formatting.gofmt,
  b.formatting.goimports,
}

-- add autocmds to run formatting on save for .go, .rs, and .py files

null_ls.setup {
  debug = true,
  sources = sources,
}

-- vim.cmd([[
--   augroup null_ls_formatting
--     autocmd!
--     autocmd BufWritePre *.go lua vim.lsp.buf.format((nil, 1000)
--     autocmd BufWritePre *.rs lua vim.lsp.buf.format((nil, 1000)
--     autocmd BufWritePre *.py lua vim.lsp.buf.format((nil, 1000)
--   augroup END
-- ]])

