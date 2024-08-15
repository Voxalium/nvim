return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.export"] = {},
				["core.export.markdown"] = {
					extension = "md",
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
						},
						default_workspace = "notes",
					},
				},
			},
		})
		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
		vim.keymap.set("i", "<C-v>", "<Plug>(neorg.itero.next-iteration)")
	end,
}
