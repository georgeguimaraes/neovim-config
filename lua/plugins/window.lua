return {
  {
    "s1n7ax/nvim-window-picker",
    event = "VeryLazy",
    config = function()
      require("window-picker").setup({
        autoselect_one = true,
        include_current = true,
        selection_chars = "1234567890",
        filter_rules = {
          -- filter using buffer options
          bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "neo-tree", "neo-tree-popup", "notify", "quickfix" },

            -- if the buffer type is one of following, the window will be ignored
            buftype = { "terminal" },
          },
        },
        other_win_hl_color = "#e35e4f",
      })
    end,
  },
}
