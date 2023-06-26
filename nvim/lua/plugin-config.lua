-- this file is for stuff i was too lazy to think about 
-- plugin-config.lua 

-- LSP lines
vim.diagnostic.config({
    virtual_text = false,
})

vim.diagnostic.config({ virtual_lines = { highlight_whole_line = false } })

-- Vim Markdown
vim.g.vim_markdown_folding_disabled = 1

-- NERDTree
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'
vim.NERDTreeShowHidden = 1

-- Lightline
vim.g.tmuxline_powerline_separators = 0
vim.g.lightline = {
    colorscheme = 'catppuccin',
    active = {
        left = {
		{ 'mode', 'paste' },
		{ 'gitbranch', 'readonly', 'absolutepath', 'modified' }
	}
    },
    component_function = {
        gitbranch = 'FugitiveHead'
    },
    enable = {
        statusline = 1,
        tabline = 0,
    }
}

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"


-- telescope
local colors = require("catppuccin.palettes").get_palette()
local TelescopeColor = {
	TelescopeMatching = { fg = colors.flamingo },
	TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

	TelescopePromptPrefix = { bg = colors.surface0 },
	TelescopePromptNormal = { bg = colors.surface0 },
	TelescopeResultsNormal = { bg = colors.mantle },
	TelescopePreviewNormal = { bg = colors.crust },
	TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
	TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
	TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
	TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
	TelescopeResultsTitle = { fg = colors.mantle },
	TelescopePreviewTitle = { bg = colors.green, fg = colors.crust },
}

for hl, col in pairs(TelescopeColor) do
	vim.api.nvim_set_hl(0, hl, col)
end

