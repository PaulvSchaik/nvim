-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- For conciseness
local opts = { noremap = true, silent = false }

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- configure which-key groups
 local wk = require("which-key")
wk.add({
  { "<leader>e", group = "Neotree file explorer" }, 
  { "<leader>w", group = "Window split options" }, 
  { "<leader>l", group = "Text line options" }, 
  })

-- Neotree config
vim.keymap.set('n', '<leader>ee', ':Neotree toggle<CR>', {desc = 'Toggle Neotree'}, opts)
vim.keymap.set('n', '<leader>ef', ':Neotree focus<CR>', {desc = 'Focus Neotree'}, opts)

-- clear highlights
vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-i>', '<C-i>', opts) -- to restore jump forward
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Increment/decrement numbers
vim.keymap.set('n', '<leader>+', '<C-a>', opts) -- increment
vim.keymap.set('n', '<leader>-', '<C-x>', opts) -- decrement

-- Window management
vim.keymap.set('n', '<leader>wv', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>wh', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>we', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>wx', ':close<CR>', opts) -- close current split window

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- Toggle line options
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', {desc = 'Toggle LineWrap'}, opts)
vim.keymap.set('n', '<leader>ln', '<cmd>set number!<CR>', {desc = 'Toggle LineNumber'}, opts)
vim.keymap.set('n', '<leader>lr', '<cmd>set relativenumber!<CR>', {desc = 'Toggle RelativeLineNumber'}, opts)

-- Move text up and down
vim.keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
vim.keymap.set('v', '<A-k>', ':m .-2<CR>==', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)
