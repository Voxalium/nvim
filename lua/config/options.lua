local options = {
	autoindent = true,
	background = "light",
	backspace = "indent,eol,start",
	clipboard = "unnamedplus",
	completeopt = "menuone,noinsert,noselect",
	cursorline = true,
	expandtab = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	scrolloff = 6,
	shiftwidth = 2,
	signcolumn = "yes",
	smartcase = true,
	smartindent = true,
	softtabstop = 2,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	tabstop = 2,
	termguicolors = true,
  undofile = true,
	wrap = true,
	linebreak = true,
  colorcolumn= "100",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
