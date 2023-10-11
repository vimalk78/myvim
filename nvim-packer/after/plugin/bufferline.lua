vim.cmd([[
  autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
]])
