vim.cmd("let g:netwr_banner = 0")

-- update the buffer if the file has changed on disk
-- useful if you are working alongside an llm with code editing capabilities
-- any changes made by the agent will be reflected in neovim when you come back
-- into the file. my workflow is neovim | cli (claude code/opencode/gemini cli)
-- so switching back into the neovim split will trigger any one of these events
-- (probably CursorHold in my case) and run checktime to update the buffer.
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
	command = "if mode() != 'c' | checktime | endif",
	pattern = { "*" },
})

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.backspace = { "start", "eol", "indent" }

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "100"

vim.opt.clipboard:append("unnamedplus")
vim.opt.hlsearch = true

vim.opt.mouse = "a"
vim.g.editorconfig = true
