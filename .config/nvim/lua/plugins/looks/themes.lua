return {
  "vague2k/huez.nvim",
  dependencies = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
  },
  lazy = false,
  config = function()
        require("huez").setup({})
  end,
  keys = {
    {
      "<leader>tt",
      "<cmd>:Huez<CR>",

    }
  }
}


