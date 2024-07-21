vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

local keymap = vim.api.nvim_set_keymap
local function opts(desc)
	return { noremap = true, silent = true, desc = desc }
end

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

keymap("n", "K", "<cmd>Lspsaga hover_doc", opts())

keymap("n", "<C-w>", ":e #<CR>", opts())

keymap("n", "<leader>hh", ":cd %:h<CR>", opts("Set home to current directory"))
