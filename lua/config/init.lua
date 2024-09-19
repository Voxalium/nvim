require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy")

vim.g.vim_json_syntax_conceal = 0
vim.g.vim_md_conceal = 0
vim.opt.fillchars = { eob = " " }

vim.cmd("colorscheme retrobox")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi CursorLineNR guibg=NONE guifg=NONE")
vim.cmd("hi CursorLine guibg=#220505")
vim.cmd("hi SignColumn guibg=NONE")
vim.cmd("hi Statusline guibg=#ff8820 guifg=#101010")
vim.cmd("hi StatuslineNC guibg=#888888 guifg=#101010")
vim.cmd("hi NvimTreeNormalFloat guibg=NONE guifg=NONE")
vim.cmd("hi NvimTreeNormalFloatBorder guibg=NONE guifg=NONE")
vim.cmd("hi Pmenu guibg=#202020")
vim.cmd("hi WhichKeyNormal guibg=#101010 guifg=NONE")
vim.cmd("hi NvimTreePopUp guibg=NONE guifg=NONE")

vim.cmd("hi TodoHighlight guibg=#ff0000 guifg=#ffffff")
vim.cmd("match TodoHighlight /\\<TODO\\>/")
