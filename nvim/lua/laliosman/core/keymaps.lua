-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

--Tabbing
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

--tree explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>[", ":NvimTreeFindFile<CR>") -- toggle file explorer

--Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- Vimspector mappings
keymap.set("n", "<leader>/", "<cmd>:call vimspector#Launch()<cr>") -- Launch debugger
keymap.set("n", "tq", "<cmd>:call vimspector#Reset()<cr>") -- Stop debugger
keymap.set("n", "tr", "<cmd>:call vimspector#Restart()<cr>") -- Restart debugger
keymap.set("n", "tp", "<cmd>:call vimspector#Restart()<cr>") -- Pause debugger
keymap.set("n", "tb", "<cmd>:call vimspector#ToggleBreakpoint()<cr>") -- Toggle breakpoint
keymap.set("n", "tn", "<cmd>:call vimspector#StepOver()<cr>") -- Step over
keymap.set("n", "ts", "<cmd>:call vimspector#StepInto()<cr>") -- Step into
keymap.set("n", "to", "<cmd>:call vimspector#StepOut()<cr>") -- Step Out
keymap.set("n", "tc", "<cmd>:call vimspector#Continue()<cr>") -- Continue
keymap.set("n", "td", "<cmd>:call vimspector#DownFrame()<cr>") -- Down a frame
keymap.set("n", "tu", "<cmd>:call vimspector#UpFrame()<cr>") -- Up a frame
keymap.set("n", "tw", "<cmd>:call vimspector#AddToWatch()<cr>") -- Up a frame
