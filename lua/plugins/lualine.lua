local config = function()
	local lazy_status = require("lazy.status")
	require("lualine").setup({
		options = {
			theme = "auto",
			globalstatus = true,
			component_separators = { left = "❱", right = "❱" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_x = {
				{
					lazy_status.updates,
					cond = lazy_status.has_updates,
					color = { fg = "#ff9e64" },
				},
				{ "filetype" },
			},
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
