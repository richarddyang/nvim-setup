-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require("neo-tree").setup({
      window = {
        mappings = {
          ["<Tab>"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
        }
      }
    })
    vim.keymap.set('n', '<leader>et', ':Neotree toggle<CR>', { desc = '[E]xplorer [T]oggle' })
    vim.keymap.set('n', '<leader>ef', ':Neotree focus<CR>', { desc = '[E]xplorer [F]ocus' })
  end,
}
