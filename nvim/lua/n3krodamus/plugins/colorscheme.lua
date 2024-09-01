return {
   "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({})
      vim.cmd.colorscheme("nord")
    end,
}


--return {
--    'eddyekofo94/gruvbox-flat.nvim',
--    priority = 1000,
--    enabled = true,
 --   config = function()
--        vim.cmd([[colorscheme gruvbox-flat]])
--    end,
--}


--return {
--      'sainnhe/everforest',
 --     lazy = false,
--      priority = 1000,
--      config = function()
--        -- Optionally configure and load the colorscheme
--        -- directly inside the plugin declaration.
--        vim.g.everforest_enable_italic = true
--        vim.cmd.colorscheme('everforest')
--      end
--}
