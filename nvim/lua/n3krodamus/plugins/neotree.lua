return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_hidden = true, -- only works on Windows for hidden files/directories
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            --"node_modules",
          },
          hide_by_pattern = {
            --"*.meta",
            --"*/src/*/tsconfig.json",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            --".config",
          },
          always_show_by_pattern = { -- uses glob style patterns
            ".env*",
            ".config*",
          },
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
            --".DS_Store",
            --"thumbs.db",
          },

        }
      }
    })

  local keymap = vim.keymap
  keymap.set("n", "<leader>ee", "<cmd>:Neotree toggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
  end,
}
