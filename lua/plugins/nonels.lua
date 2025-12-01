return {
	"nvimtools/none-ls.nvim",
	events = { "BufWritePre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("mini.trailspace").setup()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
			},
		})
	end,
	keys = {
		{
			"<leader>af",
			"<CMD>lua vim.lsp.buf.format({ timeout_ms = 3000 })<CR>",
			desc = "Auto Format Buffer",
		},
		{ "<leader>$", "<CMD>lua MiniTrailspace.trim()<CR>", desc = "Trime All Whitespaces" },
		{ "<leader>G", "<CMD>lua MiniTrailspace.trim_last_line()<CR>", desc = "Trim All Last Line" },
	},
}
