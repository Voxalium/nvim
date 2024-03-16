local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Tree
keymap("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

--Nav
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--Split
keymap("n", "<leader>ss", ":vsplit<CR>", opts)
keymap("n", "<leader>sS", ":split<CR>", opts)
keymap("n", "<leader>SS", ":MaximizerToggle<CR>", opts)

--Move text up and down
keymap("n", "<A-Down>", "<S-v> :m.+1<CR>==", opts)
keymap("n", "<A-Up>", "<S-v> :m.-2<CR>==", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

--Indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)
keymap("n", "<Leader>x", ":bdelete<CR>", opts)

