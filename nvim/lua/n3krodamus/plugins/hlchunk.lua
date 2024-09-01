return {
    "shellRaining/hlchunk.nvim",
    enabled = true,
    event = "UIEnter",
    config = function()
      --      -- local blank = require("hlchunk.mods.indent")
      -- blank({
      --   enable = hlchunk_blank,
      --   exclude_filetype = exclude_filetype,
      --   chars = { " " },
      --   notify = false,
      --   style = {
      --     { bg = "", fg = "" },
      --     {
      --       bg = function()
      --         return require("dko.colors").is_dark() and "#242426" or "#f4f2ef"
      --       end,
      --     },
      --   },
      -- }):enable()
      local line_num = require("hlchunk.mods.line_num")
      line_num({
         style = "#B2B29A",
         priority = 10,
         use_treesitter = false,
      }):enable()


      local chunk = require("hlchunk.mods.chunk")
      chunk({
        exclude_filetypes = {
          sh = true,
        },
        notify = false,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          right_arrow = ">",
        },
      }):enable()
    end,
}

