return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night", -- Pilihan: night, storm, moon, day
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true, bold = true },
      functions = { bold = true },
      variables = { italic = false },
    },
    sidebars = { "qf", "vista_kind", "terminal", "packer" },
    dim_inactive = true,
    lualine_bold = true,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight]])
  end,
}
