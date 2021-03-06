require('user.colorscheme')
require('user.sets')
require('user.keymappings')
require('user.variables')
require('user.plugins')

require'nvim-treesitter.configs'.setup {
    ensure_installed = {"javascript", "lua", "java", "json", "html", "css", "cpp"},
    highlight = { enable = true },
    indent = {enable = true}}
require 'nvim-treesitter.install'.compilers = { "clang" }

require('user.lsp')
require('user.cmp')
require('user.plugins-settings')
require('user.telescope')
