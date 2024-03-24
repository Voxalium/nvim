local options = {
	clipboard = "unnamedplus",
	backup = false,
	number = true,
	ignorecase = true,
	undofile = true,
	incsearch = true,
	hlsearch = false,
	smartcase = true,
	tabstop = 2,
	shiftwidth = 2,
	softtabstop = 2,
	expandtab = true,
	smartindent = true,
	updatetime = 300,
	pumheight = 10,
	termguicolors = true,
	colorcolumn = nil,
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
}
for k, v in pairs(options) do
	vim.opt[k] = v
end

