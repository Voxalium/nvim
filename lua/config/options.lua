local options = {
  autoindent = true,
  background = "light",
  backspace = "indent,eol,start",
  completeopt = "menuone,noinsert,noselect",
  clipboard= "unnamedplus",
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
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
