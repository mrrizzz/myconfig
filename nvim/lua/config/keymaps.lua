-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keybinding for c formatter
vim.api.nvim_set_keymap(
  "n",
  "<leader>cf",
  ":lua vim.lsp.buf.format({ async = true })<CR>",
  { noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>sx", function()
  require("telescope.builtin").resume()
end, { noremap = true, silent = true, desc = "Resume" })

-- Require necessary modules
local actions = require("telescope.actions")
local trouble = require("trouble")
local trouble_telescope = require("trouble.sources.telescope")

-- Define Telescope key mappings for normal mode
vim.api.nvim_set_keymap("n", "<C-k>", "<Cmd>Telescope<CR>", { noremap = true, silent = true }) -- Example for Telescope (modify based on your needs)
vim.api.nvim_set_keymap("n", "<C-j>", "<Cmd>Telescope<CR>", { noremap = true, silent = true }) -- Example for Telescope (modify based on your needs)
vim.api.nvim_set_keymap("n", "<C-q>", "<Cmd>Telescope quickfix<CR>", { noremap = true, silent = true }) -- Replace with your actual command
vim.api.nvim_set_keymap("n", "<C-t>", "<Cmd>TroubleToggle<CR>", { noremap = true, silent = true }) -- Open Trouble with <C-t>

-- Set Telescope actions
require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = function(prompt_bufnr)
          actions.send_selected_to_qflist(prompt_bufnr)
          trouble_telescope.open(prompt_bufnr)
        end,
      },
    },
  },
})

-- Set Trouble actions
trouble.setup({
  -- your trouble settings here
})
