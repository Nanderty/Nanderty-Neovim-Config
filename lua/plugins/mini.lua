return {
    {
	'echasnovski/mini.nvim',
	event = 'VimEnter',
	keys = {
	    { '<leader>ss', function ()
		MiniSessions.write(vim.fn.input('Create session > '))
	    end,
	    desc = 'save session'
	    },
	    { '<leader>sd', function ()
		MiniSessions.delete(vim.fn.input('Delete session > '))
	    end,
	    desc = 'delete session'
	    },
	},
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
