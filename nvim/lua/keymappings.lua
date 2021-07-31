vim.g.mapleader=" "

vim.api.nvim_set_keymap('n','<Leader>h' ,':split<CR>' ,{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<Leader>v' ,':vsplit<CR>' ,{noremap = true, silent = true})

vim.api.nvim_set_keymap('','<Leader><Left>' ,'<c-w>h' ,{noremap = true, silent = true})
vim.api.nvim_set_keymap('','<Leader><Down>' ,'<c-w>j' ,{noremap = true, silent = true})
vim.api.nvim_set_keymap('','<Leader><Up>' ,'<c-w>k' ,{noremap = true, silent = true})
vim.api.nvim_set_keymap('','<Leader><Right>' ,'<c-w>l' ,{noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<c-s>', '<esc>:w<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('', '<c-t>', '<esc>:tabnew<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<Leader>n', '<esc>:tabprevious<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<Leader>m', '<esc>:tabnext<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<Leader>s', ':sort<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>ec', ':e ~/.config/nvim/init.lua<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>sc', ':luafile %<CR>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', {noremap = true, silent = true})
