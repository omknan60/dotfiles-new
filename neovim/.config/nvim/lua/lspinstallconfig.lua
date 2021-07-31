local function make_config()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.colorProvider = { dynamicRegistration = false }
  return {
    -- enable snippet support
    capabilities = capabilities,
    -- map buffer local keybindings when the language server attaches
    on_attach = on_attach,
  }
end


local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()

  table.insert(servers, "html")
  table.insert(servers, "css")


  for _, server in pairs(servers) do
    local config = make_config()

    -- language specific config
    if server == "lua" then
      config.settings = lua_settings
      config.root_dir = function(fname)
        if fname:match("lush_theme") ~= nil then return nil end
        local util = reuire "lspconfig/util"
        return util.find_git_ancestor(fname) or util.path.dirname(fname)
      end
    end
    if server == "clangd" then
      config.filetypes = { "c", "cpp" } -- we don't want objective-c and objective-cpp!
    end

    require"lspconfig"[server].setup(config)
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
