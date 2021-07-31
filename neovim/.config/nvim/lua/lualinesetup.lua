require("lualine").setup {
  options = { theme = "gruvbox" },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { { "branch" }, { "diff", colored = false } },
    lualine_c = { { "filename", path = 1 } },
--[[    laline_x = {
      lsp_messages,
      {
        "diagnostics",
        symbols = {
          error = icons.get("x-circle") .. " ",
          warn = icons.get("alert") .. " ",
          info = icons.get("info") .. " ",
        },
        sources = { "nvim_lsp" },
      },
    },--]]
    lualine_y = {
      {
        "encoding",
        condition = function()
          -- when filencoding="" lualine would otherwise report utf-8 anyways
          return vim.bo.fileencoding and #vim.bo.fileencoding > 0 and vim.bo.fileencoding ~= "utf-8"
        end,
      },
   --[[ {
        "fileformat",
        condition = function() return vim.bo.fileformat ~= "unix" end,
        icons_enabled = false,
      }, --]]
      { "filetype", icons_enabled = false },
    },
    lualine_z = { lsp_servers_status },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}
