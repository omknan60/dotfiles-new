require('user.sets')
require('user.keymappings')
require('user.variables')
require('user.plugins')
require('user.colorscheme')
require('user.mason')
require('user.cmp')
require('user.plugins-settings')
require('user.telescope')
require('lualine').setup()

require'nvim-treesitter.configs'.setup {
    ensure_installed = {"javascript", "lua", "java", "json", "html", "css", "cpp", "rust"},
    highlight = { enable = true },
    indent = {enable = true}}
require 'nvim-treesitter.install'.compilers = { "clang" }
