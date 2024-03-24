local config = function()
	require("lualine").setup({
		options = {
			theme = "tokyonight",
			globalstatus = true,
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
		},
		tabline = {
			lualine_b = { "buffers" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}

