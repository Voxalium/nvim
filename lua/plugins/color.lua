return {
	"tiagovla/tokyodark.nvim",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme tokyodark")

		vim.cmd("hi cursorline guibg=#303040")
		vim.cmd("hi Visual guibg=#2c4444")
	end,
}
