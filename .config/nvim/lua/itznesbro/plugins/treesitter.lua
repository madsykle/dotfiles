return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"css",
				"fish",
				"gitignore",
				"rust",
        "javascript",
        "python"
			},
    },
		config = function(_, opts)
			local TS = require("nvim-treesitter")
			TS.setup(opts)
		end,
  }
}
