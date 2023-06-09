local map = require('utils').map
local wk = require('which-key')

------------
-- Groups --
------------

wk.register({
	["<leader>f"] = { name = "File" },
	["<leader>l"] = { name = "LSP" },
	["<leader>n"] = { name = "Notes" },
})

--

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Buffers
map('n', 'H', ':bprev<CR>')
map('n', 'L', ':bnext<CR>')

-- Plugins
map('n', '<leader>gg', ':LazyGit<CR>')

map('', '<C-d>', '<C-d>zz', { noremap = true })
map('', '<C-u>', '<C-u>zz', { noremap = true })

---------
-- LSP --
---------

-- Hover diagnostics
map('n', 'K', function()
	vim.lsp.buf.hover()
end, { desc = "Hover diagnostics" })

-- Go to definition
map('n', 'gd', function()
	vim.lsp.buf.definition()
end, { desc = "Go to definition" })

-- Rename symbol
map('', 'lr', function()
	vim.lsp.buf.rename()
end, { desc = "Rename symbol", noremap = true, silent = true })

-- Code actions
map('', '<leader>la', function()
	vim.lsp.buf.code_action()
end, { desc = "Code actions", noremap = true, silent = true })

-- Next diagnostic
map('', '<leader>ln', function()
	vim.diagnostic.goto_next()
end, { desc = "Next diagnostic", noremap = true, silent = true })

-- Previous diagnostic
map('', '<leader>lp', function()
	vim.diagnostic.goto_prev()
end, { desc = "Previous diagnostic", noremap = true, silent = true })

-- Show line diagnostic
map('n', '<leader>ld', function()
	vim.diagnostic.open_float()
end, { desc = "Line diagnostic" })

---------------
-- bufdelete --
---------------

local bufdelete = require('bufdelete')

map('n', '<leader>c', function()
	bufdelete.bufdelete(0)
end, { desc = "Close buffer" })

--------------
-- neo-tree --
--------------

map('n', '<leader>o', ':Neotree toggle<CR>', { desc = "Toggle file explorer" })
map('n', '<leader>e', ':Neotree focus<CR>', { desc = "Focus file explorer" })


---------------
-- Telescope --
---------------

map('n', '<leader>fr', ':Telescope resume<CR>', { desc = "Resume search" })
map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = "Find files" })
map('n', '<leader>u', '<cmd>Telescope undo<cr>', { desc = "Undo Tree" })
map('n', '<leader>fw', ':Telescope live_grep<CR>', { desc = "Find word" })

-----------
-- Neorg --
-----------

map('n', '<leader>nn', ':Neorg<CR>')
