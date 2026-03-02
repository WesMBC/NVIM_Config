return {
	"hrsh7th/cmp-nvim-lsp",
  lazu = false, 
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()

		cmp_nvim_lsp.setup({
			capabilities = capabilities,
		})
		--    vim.lsp.config("*",{
		--      capabilities = capabilities,
		--    })
	end,
}
