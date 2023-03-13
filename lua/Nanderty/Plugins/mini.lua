require('mini.starter').setup({
	evaluate_single = true
})
require('mini.sessions').setup({
force = {read = false, write = true, delete = true}
})
require('mini.fuzzy').setup()
