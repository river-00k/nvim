require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
     "markdown",
     "markdown_inline",
     "tsx",
     "toml",
     "fish",
     "php",
     "json",
     "yaml",
     "swift",
     "dockerfile",
     "css",
     "html",
     "lua"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
