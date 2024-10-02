return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
   config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                    },
                    never_show = {},
                },
            },
        })
        vim.keymap.set("n", "<Leader>o", ":Neotree filesystem reveal left<CR>", {})
        vim.keymap.set("n", "<Leader>ii", ":Neotree filesystem close <CR>", {})
    end,
}
