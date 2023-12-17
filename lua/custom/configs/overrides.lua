local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "python",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "yaml",
  },
  indent = {
    enable = true,
    disable = {
      "python",
      "yaml",
      "ansible"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- markdown
    "marksman",
    "misspell",

    -- lua stuff
    "lua-language-server",
    "stylua",

    -- python stuff
    "pyright",
    "flake8",
    "black",
    "mypy",
    "pydocstyle",
    "pylint",
    "pyre",
    "autoflake",
    "autopep8",
    "python-lsp-server",

    -- go
    "gopls",
    "glint",
    "go-debug-adapter",
    "goimports",
    "goimports-reviser",
    "golangci-lint",
    "golangci-lint-langserver",
    "golines",
    "gotests",
    "gotestsum",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- ansible stuff
    "ansible-language-server",
    "ansible-lint",

    -- docker
    "dockerfile-language-server",
    "docker-compose-language-service",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
