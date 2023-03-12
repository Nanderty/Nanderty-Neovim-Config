require'nvim-treesitter.configs'.setup {
  ensure_installed = {"help", "javascript", "html", "css", "python", "cpp", "c", "lua", "php",},

  sync_install = false,

  auto_install = true,


  highlight = {
    enable = true,

  },
}
