return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim", "WhoIsSethDaniel/mason-tool-installer.nvim" },
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "",
					package_pending = "",
					package_uninstalled = "",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"html",
				"tsserver",
				"cssls",
				"lua_ls",
				"emmet_ls",
				--"pyright",
				--"jdtls",
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"eslint_d",
				--"java-debug-adapter",
				--"java-test",
				--"isort",
				--"black",
				--"pylint",
			},
		})
	end,
}
