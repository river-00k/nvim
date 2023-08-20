if vim.g.vscode then
  -- VSCode extensions
  require("vscode.keymaps")
else
  -- Neovim extensions
  require("core.options")
  require("core.keymaps")
  require("core.plugins")
  require("core.plugin_config")
end
