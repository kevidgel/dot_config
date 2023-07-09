-- keybindings.lua
local opts = { noremap = true, silent = true }
local function map(mode, combo, mapping, opts)
  local options = {noremap = true}
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, combo, mapping, options)
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- git 
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gg', builtin.git_status, {})

-- treesitter
vim.keymap.set('n', '<leader>tr', builtin.treesitter, {})
map('n', '<leader>fp', '<Cmd>Telescope projects<CR>', opts)
map('n', '<leader>l', '<Cmd>Lazy<CR>', opts)

--term
map('n', '<leader>tt', '<Cmd>:ToggleTerm size=80 dir=git_dir direction=vertical<CR>', opts)
map('t', '<esc><esc>', '<Cmd>:ToggleTerm size=80 dir=git_dir direction=vertical<CR>', opts)

map('n', '†', ':NvimTreeToggle<CR>',opts)
-- barbar keybindings
-- git-blame keybindings
map('n', '∫', '<Cmd>GitBlameToggle<CR>', opts)
-- Move to previous/next
map('n', 'ç', '<Cmd>tabnew<CR>', opts)
map('n', '≤', '<Cmd>BufferPrevious<CR>', opts)
map('n', '≥', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '¯', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '˘', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '¡', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '™', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '£', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '¢', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '∞', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '§', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '¶', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '•', '<Cmd>BufferGoto 8<CR>', opts)
map('n', 'ª', '<Cmd>BufferGoto 9<CR>', opts)
map('n', 'º', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', 'π', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '≈', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', 'ß', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- telescope-browser
map('n', '<Space>fd', '<Cmd>Telescope file_browser<CR>', opts)

-- DAP ui
map('n', '<Space>dd', '<Cmd>lua require("dapui").toggle()<CR>', opts)
map('n', '<Space>db', '<Cmd>lua require("dap").toggle_breakpoint()<CR>', opts)
map('n', '<Space>dc', '<Cmd>lua require("dap").continue()<CR>', opts)
map('n', '<Space>do', '<Cmd>lua require("dap").step_over()<CR>', opts)
map('n', '<Space>di', '<Cmd>lua require("dap").step_into()<CR>', opts)


-- VS Tasks
map('n', '<Leader>ta', '<Cmd>lua require("telescope").extensions.vstask.tasks()<CR>')
map('n', '<Leader>ti', '<Cmd>lua require("telescope").extensions.vstask.inputs()<CR>')
map('n', '<Leader>th', '<Cmd>lua require("telescope").extensions.vstask.history()<CR>')
map('n', '<Leader>tl', '<Cmd>lua require("telescope").extensions.vstask.launch()<CR>')
