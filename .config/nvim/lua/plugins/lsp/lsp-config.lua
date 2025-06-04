return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim"
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        auto_install = true,
        ensure_installed = {
          "lua_ls",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
    end
  },
  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "isort", "black" },
          rust = { "rustfmt", lsp_format = "fallback" },
          javascript = { "prettierd", "prettier", stop_after_first = true },
        },
      })
    end
  },
  {
    "mfussenegger/nvim-lint",
    config = function() 
      require('lint').linters_by_ft = {
        markdown = {'vale'},
        lua = {'luacheck'}
      }
    end
  }
}
