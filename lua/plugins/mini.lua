return {
	"nvim-mini/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 200 })
		require("mini.comment").setup()
		require("mini.diff").setup()
		require("mini.git").setup()
		require("mini.move").setup()
		-- require("mini.operators").setup()
		require("mini.icons").setup()
		require("mini.pairs").setup({
			modes = { insert = true, command = true, terminal = false },
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			skip_ts = { "string" },
			skip_unbalanced = true,
			markdown = true,
		})
		require("mini.surround").setup()
		require("mini.files").setup()
		require("mini.hipatterns").setup({
			highlighters = {
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})
		require("mini.map").setup()
	end,
	keys = {
		{ "<leader>=", "<CMD>lua MiniMap.toggle()<CR>", desc = "Toggle Mini Map" },
		{ "<leader>-", "<CMD>lua MiniFiles.open()<CR>", desc = "Toggle Mini Map" },
	},
}
