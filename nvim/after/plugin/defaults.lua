-- Options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
--vim.opt.autochdir = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.smartindent = true
vim.opt.incsearch = true
vim.opt.colorcolumn = "100"

-- Keybindings
vim.keymap.set("n", "<C-j>", ":bp<CR>")
vim.keymap.set("n", "<C-k>", ":bn<CR>")
vim.keymap.set("n", "<C-h>", ":tabp<CR>")
vim.keymap.set("n", "<C-l>", ":tabn<CR>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("n", "<C-p>", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>ns", ":let g:netrw_browse_split = 2<CR>")
vim.keymap.set("n", "<leader>no", ":let g:netrw_browse_split = ''<CR>")
-- -- Plugin Config
vim.keymap.set("n", "<leader>fo", ":lua vim.lsp.buf.format()<CR>")

