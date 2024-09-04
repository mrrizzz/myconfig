return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "prisma" })
      end
    end,
  },
  {
    "prisma/vim-prisma",
    ft = "prisma",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        prismals = {
          settings = {
            prisma = {
              -- Enable formatting of Prisma schema files
              format = {
                enabled = true,
              },
              -- Prevent the LSP from automatically restarting when encountering errors
              disableErrorSuppression = false,
              -- Enable completion suggestions for Prisma Client
              prismaClientGeneration = true,
              -- Specify a custom Prisma schema file location
              -- schemaPath = "./prisma/schema.prisma",
            },
          },
          flags = {
            -- Disable LSP "debounce" feature for quicker updates
            debounce_text_changes = 150,
          },
        },
      },
    },
  },
}
