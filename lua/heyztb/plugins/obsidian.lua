return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		workspaces = {
			{
				name = "2025",
				path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/2025/",
			},
		},

		templates = {
			folder = "Templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			-- A map for custom variables, the key should be the variable and the value a function.
			-- Functions are called with obsidian.TemplateContext objects as their sole parameter.
			-- See: https://github.com/obsidian-nvim/obsidian.nvim/wiki/Template#substitutions
			substitutions = {},

			-- A map for configuring unique directories and paths for specific templates
			--- See: https://github.com/obsidian-nvim/obsidian.nvim/wiki/Template#customizations
			customizations = {},
		},

		picker = {
			-- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', 'mini.pick' or 'snacks.pick'.
			name = "telescope.nvim",
			-- Optional, configure key mappings for the picker. These are the defaults.
			-- Not all pickers support all mappings.
			note_mappings = {
				-- Create a new note from your query.
				new = "<C-x>",
				-- Insert a link to the selected note.
				insert_link = "<C-l>",
			},
			tag_mappings = {
				-- Add tag(s) to current note.
				tag_note = "<C-x>",
				-- Insert a tag at the current location.
				insert_tag = "<C-l>",
			},
		},
	},
}
