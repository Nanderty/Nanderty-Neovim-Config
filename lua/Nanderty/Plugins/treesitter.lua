require'nvim-treesitter.configs'.setup {
  ensure_installed = {"help", "javascript", "html", "css", "python", "cpp", "c", "lua", "php",},

  sync_install = false,

  highlight = {
    enable = true,

  },
}
