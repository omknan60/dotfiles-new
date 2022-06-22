--settings for autopairing using lexi

vim.api.nvim_exec(
[[
call lexima#add_rule({'char': '<', 'input_after': '>', 'filetype': 'html'})
]], false)
