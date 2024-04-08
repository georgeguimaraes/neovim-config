return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {}, -- Disable time from LazyVim
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, options)
      for _, v in ipairs(options.config.center) do
        if v.key == "g" then
          v.key = "/"
        end
      end
      table.insert(
        options.config.center,
        3,
        { action = "Neotree", key = "e", key_format = "  %s", desc = "Browse Files", icon = "  " }
      )
    end,
  },
  {
    "folke/which-key.nvim",
    opts = {
      window = {
        border = "single",
        winblend = 10,
        margin = { 1, 0, 2, 0 },
      },
    },
  },
}
