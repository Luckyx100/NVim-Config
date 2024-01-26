return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			-- ensure_installed = { "lua_ls", "clangd", "tsserver", "pyright", "html" },
		},
	},
	{
		"neovim/nvim-lspconfig", -- A git repo allows to connect our installed lsp's
		lazy = false,
		config = function() -- "LspInfo":tells which server is active for current buffer
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			-- calling servers to communicate
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "ca", vim.lsp.buf.code_action, {})
		end,
	},
}
