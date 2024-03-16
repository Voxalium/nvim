local config = function()
	vim.defer_fn(function()
		require("colorizer").attach_to_buffer(0)
	end, 0)
end

return {
	{
		"NvChad/nvim-colorizer.lua",
		lazy = false,
		config = config,
		opts = {
			user_default_options = {
				mode = "background",
				names = true,
			},
		},
	},
}
