local keymap = vim.keymap
local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {

			prompt_prefix = " ",
			selection_caret = " ",
			path_display = { "smart" },

			mappings = {
				i = {
					["<C-j>"] = move_selection_next,
					["<C-k>"] = move_selection_previous,
					["<Down>"] = move_selection_next,
					["<Up>"] = move_selection_previous,
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = true,
				hidden = false,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},

			find_buffers = {
				theme = "dropdown",
				previewer = true,
			},
		},
	})
	--telescope.load_extension("fzf")
	telescope.load_extension("project")
	telescope.load_extension("software-licenses")
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-project.nvim",
		"chip/telescope-software-licenses.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
	key = {
		keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", { desc = "Find Keymaps" }),
		keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find Files" }),
		keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Find Help" }),
		keymap.set("n", "<leader>fa", ":Telescope <CR>", { desc = "Open Telescope" }),
		keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Find Grep" }),
		keymap.set("n", "<leader>fs", ":Telescope grep_string<CR>", { desc = "Find String" }),
		keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find Buffer" }),
		keymap.set("n", "<leader>fp", ":Telescope project<CR>", { desc = "Find project" }),
		keymap.set("n", "<leader>:", ":Telescope commands<CR>", { desc = "Telescope Commands" }),
	},
}
