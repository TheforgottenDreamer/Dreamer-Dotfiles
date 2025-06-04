return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
  keys = {
		{
			'<leader><tab>',
			function()
				require('neo-tree.command').execute({ reveal = true, toggle = true,  dir = vim.uv.cwd() })
			end,
			desc = 'Reveal in Explorer (cwd)',
		},
    {
			'<leader>e',
			function()
				require('neo-tree.command').execute({ reveal = true,  dir = vim.uv.cwd() })
			end,
			desc = 'Reveal in Explorer (cwd)',
		}
	},
}
