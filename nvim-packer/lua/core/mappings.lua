vim.cmd([[
  colorscheme molokai
  set nohlsearch
  set nu
  set noshowmatch

  set sw=2
  set tabstop=4
  set updatetime=100
  map qq :bd<cr>
  function! g:FuckThatMatchParen ()
      if exists(":NoMatchParen")
	  :NoMatchParen
      endif
  endfunction

  augroup plugin_initialize
      autocmd!
      autocmd VimEnter * call FuckThatMatchParen()
  augroup END
]])

-- Custom key mappings, which i always need

-- vim.g.mapleader = " " -- easy to reach leader key
vim.keymap.set("n", "-", vim.cmd.Ex) -- need nvim 0.8+

vim.keymap.set('n', '<Tab>', vim.cmd.bnext)
vim.keymap.set('n', '<S-Tab>', vim.cmd.bprevious)
vim.keymap.set('n','<leader>c', vim.cmd.cclose)
vim.keymap.set('n','<C-n>', vim.cmd.cnext)
vim.keymap.set('n','<C-p>', vim.cmd.cprevious)


-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})
