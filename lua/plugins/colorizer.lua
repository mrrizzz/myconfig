return {
  {
    "NvChad/nvim-colorizer.lua",
    lazy = true,
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      filetypes = { "*" }, -- Aktifkan untuk semua file
      user_default_options = {
        RGB = true, -- RGB fungsi seperti rgb(255, 255, 255)
        RRGGBB = true, -- Hex seperti #RRGGBB
        names = false, -- Matikan nama warna seperti "Blue"
        RRGGBBAA = true, -- Hex dengan alpha seperti #RRGGBBAA
        rgb_fn = true, -- rgb() dan rgba() fungsi
        hsl_fn = true, -- hsl() dan hsla() fungsi
        css = true, -- Aktifkan semua CSS fungsi: rgb_fn, hsl_fn, names
        css_fn = true, -- Aktifkan semua fungsi CSS *non-*standar
      },
    },
    config = function(_, opts)
      require("colorizer").setup(opts)
    end,
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    lazy = true,
    opts = {},
    config = function()
      require("tailwindcss-colorizer-cmp").setup({
        color_square_width = 2, -- Kotak kecil untuk menampilkan warna
      })
    end,
  },
}
