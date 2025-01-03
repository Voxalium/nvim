local theme = {
	"@comment.warning guifg=#ff2000 gui=bold",
	"@keyword.conditional guifg=#ff2000 gui=bold",
	"@keyword.directive guifg=#0020ff gui=bold",
	"@keyword.import guifg=#0020ff gui=bold",
	"@keyword.repeat guifg=#00aa00 gui=bold",
	"@keyword.return guifg=#aa00ff gui=bold",
	"@variable guifg=#000000",
	"Boolean guifg=#000000 gui=bold",
	"Character guifg=#0020ff",
	"Comment guifg=#00aa00 gui=italic",
	"Constant guifg=#aa0044 gui=bold",
	"CursorLine guibg=#e5e5e5",
	"CursorLineNR guibg=NONE guifg=NONE",
	"Define guifg=#0020ff gui=bold",
	"Delimiter guifg=#000000",
	"Diagnostic guifg=#ff2000 gui=bold",
	"DiagnosticError guifg=#ff2000 gui=bold",
	"DiagnosticHint guifg=#ff2000 gui=bold",
	"DiagnosticInfo guifg=#ff2000 gui=bold",
	"DiagnosticOk guifg=#ff2000 gui=bold",
	"DiagnosticUnderlineWarn guifg=#ff2000 gui=bold",
	"DiagnosticWarn guifg=#ff2000 gui=bold",
	"Directory guifg=#ff2000 gui=bold",
	"ErrorMsg guifg=#ff2000 gui=bold",
	"Identifier guifg=#000000",
	"Include guifg=#0020ff gui=bold",
	"Keyword guifg=#aa00ff",
	"LspReferenceRead guifg=#ff2000 gui=bold",
	"LspReferenceText guifg=#ff2000 gui=bold",
	"LspReferenceWrite guifg=#ff2000 gui=bold",
	"Macro guifg=#000000",
	"MatchParen guifg=#ffffff guibg=#0020ff gui=bold",
	"ModeMsg guifg=#ff2000 gui=bold",
	"MoreMsg guifg=#ff2000 gui=bold",
	"Normal guibg=#efefef guifg=#000000 ctermbg=NONE",
	"NormalFloat guibg=#aaaaee guifg=#000000 ctermbg=NONE",
	"Number guifg=#000000",
	"NvimTreeFolderName guibg=NONE guifg=#ff8020 gui=bold",
	"NvimTreeNormalFloat guibg=NONE guifg=NONE",
	"NvimTreeNormalFloatBorder guibg=NONE guifg=NONE",
	"NvimTreeOpenedFolderName guibg=NONE guifg=#ff0000 gui=bold",
	"NvimTreePopUp guibg=NONE guifg=NONE",
	"NvimTreeRootFolder guibg=NONE guifg=#0020ff gui=bold",
	"Operator guifg=#000000 gui=bold",
	"Pmenu guibg=NONE guifg=#000000",
	"PreProc guifg=#0020ff gui=bold",
	"Question guifg=#000000",
	"QuickFixLine guifg=#ff2000 gui=bold",
	"SignColumn guibg=#e5e5e5",
	"Special guifg=#aa00ff gui=bold",
	"Statement guifg=#000000",
	"Statusline guibg=#000000 guifg=#ff8020",
	"StatuslineNC guibg=#888888 guifg=#cccccc",
	"String guifg=#0020ff",
	"Structure guifg=#00aa00 gui=bold",
	"Title guifg=#000000",
	"Type guifg=#aa00ff gui=bold",
	"Variable guifg=#000000",
	"WarningMsg guifg=#ff2000 gui=bold",
	"WhichKeyNormal guibg=#c5c5c5 guifg=NONE",
	"function guifg=#ff8020 gui=bold",
  "CmpMenu guibg=#A0A0A0",
  "ColorColumn guibg=#e5e5e5",
}

for _, v in ipairs(theme) do
	vim.cmd("hi " .. v)
end
