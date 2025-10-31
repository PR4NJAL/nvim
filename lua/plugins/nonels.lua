return {
	"nvimtools/none-ls.nvim",
	events = { "BufWritePre", "BufReadPre", "InsertLeave" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
			},
		})
	end,
	keys = {
		{
			"<leader>af",
			"<CMD>lua vim.lsp.buf.format({ async = true, timeout_ms = 2000 })<CR>",
			desc = "Auto Format Buffer",
		},
	},
}
