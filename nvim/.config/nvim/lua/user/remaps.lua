local keymap = require("user.keymap");

local nnoremap = keymap.nnoremap;

vim.g.mapleader = " ";

nnoremap("<leader>po", "<cmd>Ex<CR>");
nnoremap("<leader>v", ":vs<CR>");
nnoremap("<leader>h", ":sp<CR>");

nnoremap("<leader><Right>", "<C-w>l");
nnoremap("<leader><Left>", "<C-w>h");
nnoremap("<leader><Up>", "<C-w>k");
nnoremap("<leader><Down>", "<C-w>j");
