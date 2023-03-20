return {
  {
    'echasnovski/mini.nvim',
    event = 'VimEnter',
    config = function()
      require('mini.sessions').setup({
	force = {read = false, write = true, delete = true}
      })
      require('mini.starter').setup({
	evaluate_single = true
      })
    end,
  },
}
