return{
    {        "nvim-treesitter/nvim-treesitter",
        tag = "v0.10.0",
        build = ":TSUpdate",
        lazy = false;
        config = function()
            local config = require("nvim-treesitter")
            config.setup({
                ensure_installed = {'lua',"python",'javascript'},
                --auto_install = true,
                highlight = { enable = true, disabled = {""} },
                indent = { enable = true },
            })
        end
    }

}
