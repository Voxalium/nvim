local config = function()
	--[[ vim.defer_fn(function()
		require("colorizer").attach_to_buffer(0)
	end, 0) ]]
	require("colorizer").setup({
		"css",
		"javascript",
		"scss",
		html = { mode = "background" },
	}, { mode = "background" })
end

return {
	{
		"norcalli/nvim-colorizer.lua",
		lazy = false,
		config = config,
		opts = {
			user_default_options = {
				mode = "background",
				RGB = true,
				RRGGBB = true,
				names = true,
				RRGGBBAA = true,
				rgb_fn = true,
				hsl_fn = true,
				css = true,
				css_fn = true,
			},
		},
	},
}
