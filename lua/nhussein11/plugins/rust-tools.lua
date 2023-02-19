local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
			-- go to peek definition
			--
			vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", { buffer = bufnr }) -- show definition, references
			vim.keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", { buffer = bufnr }) -- got to declaration

			vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { buffer = bufnr }) -- see definition and make edits in window
			vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { buffer = bufnr }) -- go to implementation
			vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { buffer = bufnr }) -- see available code actions
			vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { buffer = bufnr }) -- smart rename
			vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", { buffer = bufnr }) -- show  diagnostics for line
			vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { buffer = bufnr }) -- show diagnostics for cursor
			vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { buffer = bufnr }) -- jump to previous diagnostic in buffer
			vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { buffer = bufnr }) -- jump to next diagnostic in buffer
			vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { buffer = bufnr }) -- show documentation for what is under cursor
			vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { buffer = bufnr }) -- see outline on right hand side
		end,
	},
})
