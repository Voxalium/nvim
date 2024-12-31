local options = {
	clipboard = "unnamedplus",
	backup = false,
	number = true,
	relativenumber = true,
	wrap = true,
	ignorecase = true,
	smartcase = true,
	incsearch = true,
	hlsearch = false,
	undofile = true,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	smartindent = true,
	autoindent = true,
	updatetime = 300,
	pumheight = 10,
	termguicolors = true,
	background = "light",
	colorcolumn = "80",
	signcolumn = "yes",
	completeopt = "menuone,noinsert,noselect",
	hidden = true,
	swapfile = false,
	backspace = "indent,eol,start",
	splitright = true,
	splitbelow = true,
	autochdir = false,
	modifiable = true,
	encoding = "UTF-8",
	mouse = "a",
	scrolloff = 6,
	cursorline = true,
	autoread = true,
}
for k, v in pairs(options) do
	vim.opt[k] = v
end
