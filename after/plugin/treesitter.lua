-- Find syntax's at: https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file
require 'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the listed parsers MUST always be installed)
	ensure_installed = {
		"html",
		"json",
		"javascript",
		"typescript",
		"css",
		"styled",
		"http",
		"rust",
		"sql",
		"cpp",
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"markdown",
		"markdown_inline"
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = true,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = false,


	highlight = {
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}
vim.api.nvim_create_user_command(
  'DisableHL',  -- The name of the command
  function()  -- The action the command performs
		vim.cmd("TSBufDisable highlight")
  end,
  {}
)

vim.api.nvim_create_user_command(
  'EnableHL',
  function()
		vim.cmd("TSBufEnable highlight")
  end,
  {}
)
