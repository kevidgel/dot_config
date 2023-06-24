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
