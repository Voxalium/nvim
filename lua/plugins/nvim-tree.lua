local config = function()
	require("nvim-tree").setup({
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
	})
end

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = config,
}

