vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Toggle Explorer
vim.keymap.set("n", "<leader>e", function()
	local ex = nil
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_get_option(buf, "filetype") == "netrw" then
			ex = buf
			break
		end
	end

	if ex then
		vim.api.nvim_buf_delete(ex, { force = true })
	else
		vim.cmd("Ex")
	end
end, { desc = "Toggle File Explorer" })

--Toggle Termninal
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Switch to Normal mode from Terminal" })

vim.keymap.set("n", "<leader>t", function()
	local term_buf = nil

	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
			term_buf = buf
			break
		end
	end

	if term_buf then
		vim.api.nvim_buf_delete(term_buf, { force = true })
	else
		vim.cmd.vnew()
		vim.cmd.term()
		vim.cmd.wincmd("J")
		vim.api.nvim_win_set_height(0, 15)
		vim.cmd.startinsert()
	end
end, { desc = "Toggle Terminal" })

--Move in insert mode
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Set current dir
vim.keymap.set("n", "<leader>hh", ":cd %:h<CR>")

-- Navigate buffers
vim.keymap.set("n", "<S-Right>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Left>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<Leader>x", ":bdelete<CR>", { desc = "Delete Buffer" })

--Move text up and down
vim.keymap.set("n", "<A-j>", "<S-v> :m.+1<CR>==")
vim.keymap.set("n", "<A-k>", "<S-v> :m.-2<CR>==")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

--Make
vim.keymap.set("n", "<F5>", ":make <CR>")
