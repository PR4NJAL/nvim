return {
	"saghen/blink.cmp",
	event = "VimEnter",
	dependencies = {
		"folke/lazydev.nvim",
	},
	opts = {
		keymap = {
			preset = "default",
		},
		appearance = {
			nerd_font_variant = "normal",
		},
		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
		},
		sources = {
			default = { "lsp", "path", "snippets", "lazydev", "omni" },
			providers = {
				lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
			},
		},
		fuzzy = { implementation = "lua" },
		signature = { enabled = true },
	},
}
