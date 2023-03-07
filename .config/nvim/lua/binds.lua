-- Options --
local opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

-- Leader --
-- keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.localleader = ","

-- reload config
keymap("n", "<leader>rc", ":source $MYVIMRC<CR>", opts)

-- Modes --
--   normal_mode = "n",
--   insert_mode = "h",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Window Navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Resize Windows
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-k>", ":resize +2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<leader>q", ":bp<CR>", opts)
keymap("n", "<leader>w", ":bn<CR>", opts)

-- Close Buffer
keymap("n", "<leader>d", ":bd!<CR>", opts)
-- Close all Buffer (bail out)
keymap("n", "<leader>bo", ":qa<CR>", opts)

-- Clear highlights
keymap("n", "<leader>/", "<cmd>nohlsearch<CR>", opts)

-- Insert --

-- Visual --
-- Stay in indent mode for indentation
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Plugins --
-- LSP
keymap("n", "<leader>gf", ":Format<CR>", opts)
-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)
-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
-- keymap("n", "<leader>fp", "<cmd>Telescope projects<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope commands<CR>", opts)
local builtin = require('telescope.builtin')
keymap("n", "<leader>fh", builtin.current_buffer_fuzzy_find, opts)
-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
-- Spell check
keymap("n", "<leader>st", ":set spell!<CR>", opts)
keymap("n", "<leader>sk", "[s<CR>", opts)
keymap("n", "<leader>sj", "]s<CR>", opts)
-- Markdown preview
keymap("n", "<leader>mp", ":MarkdownPreview<CR>", opts)
keymap("n", "<leader>ms", ":MarkdownPreviewStop<CR>", opts)
keymap("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", opts)
-- Zen-Mode
keymap("n", "<leader>mz", ":ZenMode<CR>", opts)
-- Todo
keymap("n", "<leader>t", ":TodoTelescope<CR>", opts)
-- Zk
-- Create a new note after asking for its title.
keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Titel: ') }<CR>", opts)
-- Open notes.
keymap("n", "<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
-- Search for the notes matching the current visual selection.
keymap("v", "<leader>zf", ":'<,'>ZkMatch<CR>", opts)
-- Open notes associated with the selected tags.
keymap("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)
-- Create new note from last selection -> creates link automagically
keymap("v", "<leader>zl", ":'<,'>ZkNewFromTitleSelection<CR>", opts)
-- Follow the selected link
keymap("n", "<leader>zz", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- Create daily journal
keymap("n", "<leader>zj", "<Cmd>ZkNew { dir = 'journal/daily', date = 'today' }<CR>", opts)
-- Create blog post
keymap("n", "<leader>zp", "<Cmd>ZkNew { title = vim.fn.input('Titel: '), dir = 'blog/post', date = 'today' }<CR>", opts)
-- Show the backlinks
keymap('n', '<leader>zb', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
-- Refresh the indexing
keymap('n', '<leader>zr', ':ZkIndex<CR>', opts)
-- Colorizer
-- Toggle colorizer
keymap("n", "<leader>ct", ":ColorizerToggle<CR>", opts)
