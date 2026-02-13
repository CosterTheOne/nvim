return {
	"neovim/nvim-lspconfig",

	config = function()

local capabilities = {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true
    }
  }
}

capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)



		vim.lsp.config("clangd", {
      capabilities = capabiliites
		})

		vim.lsp.config("rust-analyzer", {
      capabilities = capabilities
		})

		vim.lsp.config("lua_ls", {
      capabilities = capabilities
		})

		-- ENABLING LSP
	  -- vim.lsp.enable("clangd")
		-- vim.lsp.enable("rust-analyzer")
		-- vim.lsp.enable("lua_ls")

		-- Keymapping for LSP
		-- (since i don't know how to do it, i'll add that thing typecraft talks about later)

		local keymap = vim.keymap

		keymap.set("n", "K", vim.lsp.buf.hover, {})
		keymap.set("n", "gd", vim.lsp.buf.definition, {})
		keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
