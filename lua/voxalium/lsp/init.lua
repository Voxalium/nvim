local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "voxalium.lsp.mason"
require("voxalium.lsp.handlers").setup()
require "voxalium.lsp.null-ls"
