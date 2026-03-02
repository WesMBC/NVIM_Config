return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
  lazy = true,
	config = function()
		--configuracion de un commandos
		vim.keymap.set("n", "<leader>m", ":Neotree<cr>", {})
    
		--configuracion general deb plugin
		--se crea primero una variable con el llamado a la configuracion
		local config = require("neo-tree")

		config.setup({
			close_if_last_window = true,
			enable_git_status = true,
			enable_diagnostics = true,

      content_layout = "center",

			--open_files_do_not_replace_types = { "terminal", "trouble", "qf", "git_status" },

			sources = {
				"filesystem",
				"git_status",
          'buffers'
			},

			source_selector = {
				winbar = false,
				statusline = true,
			},

			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
				follow_current_file = { enabled = false, leave_dirs_open = true },
				group_empty_dirs = true,
			},

			window = {
				position = "right",
				width = 30,
			},
		})
	end,
}
