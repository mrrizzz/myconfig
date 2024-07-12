-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--autoformat for c
vim.cmd([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.c,*.cpp,*.h,*.hpp lua vim.lsp.buf.format({ async = true })
  augroup END
]])
