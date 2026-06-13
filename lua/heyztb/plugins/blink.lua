return {
	{
		"saghen/blink.cmp",
		version = "v1.*",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			{
				"supermaven-inc/supermaven-nvim",
				opts = {
					disable_inline_completion = true, -- disables inline completion for use with cmp
					disable_keymaps = true, -- disables built in keymaps for more manual control
				},
			},
			{
				"huijiro/blink-cmp-supermaven",
			},
		},
		config = function()
			require("blink.cmp").setup({
				fuzzy = {
					implementation = "rust",
				},
				keymap = {
					preset = "default",
				},
				completion = {
					menu = {
						auto_show = true,
					},
					documentation = {
						auto_show = true,
					},
					ghost_text = {
						enabled = false,
						show_with_menu = true,
					},
					accept = {
						auto_brackets = {
							enabled = true,
						},
					},
				},
				cmdline = {
					enabled = true,
					keymap = { preset = "cmdline" },
					completion = {
						menu = { auto_show = true },
					},
				},
				sources = {
					default = { "lsp", "path", "supermaven", "buffer", "snippets" },
					providers = {
						lsp = {
							opts = {
								tailwind_color_icon = "󱓻",
							},
						},
						supermaven = {
							name = "supermaven",
							module = "blink-cmp-supermaven",
							async = true,
						},
					},
				},
				appearance = {
					use_nvim_cmp_as_default = false,
					nerd_font_variant = "mono",
				},
				snippets = {
					preset = "luasnip",
				},
			})
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
}
