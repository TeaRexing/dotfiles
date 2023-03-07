-- create local options table
local options = {
  -- File management
  backup = false,                          -- create no backup file
  swapfile = false,                        -- create no swapfile
  undofile = true,                         -- enable persistent undo
  writebackup = false,                     -- don't overwrite external edits
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  fileencoding = "utf-8",                  -- utf-8 encoding
  -- Layout
  cmdheight = 1,                           -- double-height command line
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- don't show -- INSERT -- etc.
  showtabline = 2,                         -- always show tabs
  signcolumn = "yes",                      -- always show the sign column
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- use absolute numbered lines
  numberwidth = 4,                         -- set number column width
  wrap = true,                             -- wrap long lines
  whichwrap =  "<,>,[,],h,l",              -- go to next/previous line
  completeopt = { "menuone", "noselect" }, -- completion popup - don't auto select
  colorcolumn = "80",
  -- Splits
  splitbelow = true,                       -- horizontal split below
  splitright = true,                       -- vertical split right
  -- Editing
  conceallevel = 0,                        -- conceal nothing
  -- Indentation
  smartindent = true,                      -- smart indent
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  -- Search
  hlsearch = true,                         -- highlight matched patterns
  ignorecase = true,                       -- ignore case in search patterns
  smartcase = true,                        -- smart case
  -- Mouse/Cursor
  mouse = "a",                             -- allow the mouse to be used in all modes
  cursorline = true,                       -- highlight the current line
  scrolloff = 8,                           -- vertical scrolloff
  sidescrolloff = 8,                       -- horizontal scrolloff
  -- Timers
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete
  updatetime = 300,                        -- faster completion
  -- Colors
  termguicolors = true,                    -- use more colors
  -- GUI
  --guifont = "monospace:h17"              -- the font used in graphical neovim applications
  -- Spell checking
  spelllang = "de",
}

-- set options via vimscript
vim.cmd [[set iskeyword+=-]]               -- add '-' to keywords for single word

-- set all values
for key, value in pairs(options) do
  vim.opt[key] = value
end
