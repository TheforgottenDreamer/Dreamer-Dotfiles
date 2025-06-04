return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<BS>", desc = "Decrement Selection", mode = "x" },
        { "<c-space>", desc = "Increment Selection", mode = { "x", "n" } },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
		  "RRethy/nvim-treesitter-textsubjects",
		  "nvim-treesitter/nvim-treesitter-textobjects",
	  },
    build = ":TSUpdate",
    lazy = vim.fn.argc(-1) == 0,
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        sync_install = false,
        ensure_installed = {
          "lua",
          "cpp",
          "c",
          "glsl",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    enabled = true,
    config = function()
      require("treesitter-context").setup()
    end

  }
}
