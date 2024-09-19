vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

local keymap = vim.api.nvim_set_keymap
local function opts(desc)
	return { noremap = true, silent = true, desc = desc }
end

--Move in insert mode
keymap("i", "<C-h>", "<Left>", opts("Move left"))
keymap("i", "<C-l>", "<Right>", opts("Move right"))

--Move in wrap line
keymap("n", "k", "gk", opts("Move up"))
keymap("n", "j", "gj", opts("Move down"))

--Tree
keymap("n", "<leader>e", ":NvimTreeFindFileToggle!<CR>", opts("Toggle file explorer"))
keymap("n", "<leader>E", ":NvimTreeCollapse<CR>", opts("Collapse file explorer"))

--Nav
keymap("n", "<C-h>", "<C-w>h", opts())
keymap("n", "<C-j>", "<C-w>j", opts())
keymap("n", "<C-k>", "<C-w>k", opts())
keymap("n", "<C-l>", "<C-w>l", opts())

--Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts())
keymap("n", "<C-Down>", ":resize +2<CR>", opts())
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts())
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts())

--Split
keymap("n", "<leader>ss", ":vsplit<CR>", opts("Vertical Split"))
keymap("n", "<leader>sS", ":split<CR>", opts("Horizontal Split"))
keymap("n", "<leader>SS", ":MaximizerToggle<CR>", opts("Maximaze Split"))

--Move text up and down
keymap("n", "<A-j>", "<S-v> :m.+1<CR>==", opts())
keymap("n", "<A-k>", "<S-v> :m.-2<CR>==", opts())
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts())
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts())

--Indent
keymap("v", "<", "<gv", opts())
keymap("v", ">", ">gv", opts())

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts())
keymap("n", "<S-Left>", ":bprevious<CR>", opts())
keymap("n", "<Leader>x", ":bdelete<CR>", opts("Delete Buffer"))

-- Delete words
keymap("i", "<C-BS>", "<esc>dvbi", opts("Delete previous word"))
keymap("i", "<C-Del>", "<esc>ldvwi", opts("Delete next word"))

-- Set current dir
keymap("n", "<leader>hh", ":cd %:h<CR>", opts("Set current directory"))

--Surround
keymap("n", '<leader>s"', ':norm ysiw"<CR>', opts("Surround with double quotes"))
keymap("n", "<leader>s(", ":norm ysiw(<CR>", opts("Surround with parentheses"))
keymap("n", "<leader>s{", ":norm ysiw{<CR>", opts("Surround with curly braces"))
keymap("n", "<leader>s[", ":norm ysiw[]<CR>", opts("Surround with square brackets"))

--Invlist
keymap("n", "<leader>t", ":set invlist<CR>", opts("Set invlist"))
