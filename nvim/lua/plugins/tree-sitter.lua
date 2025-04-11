-- return { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			-- auto install
			auto_install = true,
			-- add language you want to highlight in code
			ensure_installed = {
				"lua",
				"vim",
				"javascript",
				"typescript",
				"tsx",
				"go",
				"java",
				"json",
	--			"zig",
 		           	"python",
				"markdown",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
