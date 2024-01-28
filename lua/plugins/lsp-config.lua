return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"rust_analyzer",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Setup language servers.
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.pyright.setup({})
			lspconfig.rust_analyzer.setup({
				-- Server-specific settings. See `:help lspconfig-setup`
				settings = {
					["rust-analyzer"] = {},
				},
			})

			-- Keymaps
			local opts = {}
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({})

			vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>")
			vim.keymap.set("n", "<leader>K", ":Lspsaga hover_doc<CR>")
			vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>")
			vim.keymap.set("n", "<leader>gr", ":Lspsaga finder tyd+ref+imp+def<CR>")
			vim.keymap.set("n", "<leader>gd", ":Lspsaga peek_definition<CR>")
			vim.keymap.set("n", "<leader>D", ":Lspsaga show_line_diagnostics<CR>")
			vim.keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>")
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
}
