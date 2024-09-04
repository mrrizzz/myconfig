return {
  "github/copilot.vim",
  event = "BufReadPost",
  config = function()
    vim.cmd([[Copilot auth]])
  end,
}
