require('colorscheme')
require('sets')
require('keymappings')
require('variables')
require('plugins')

require'nvim-treesitter.configs'.setup {
    ensure_installed = {"javascript", "lua", "java", "json", "html", "css", "cpp"},
    highlight = { enable = true },
    indent = {enable = true}}
require 'nvim-treesitter.install'.compilers = { "clang" }

require('lspinstallconfig')
require('lsp-config')
require('compe-config')
require('lualinesetup')
require('plugins-settings')
