vim.g['lightline'] = {
  colorscheme = 'one',
  bufferline = {
	show_number = 0,
	shorten_path = 0,
	unicode_symbols = 0,
  },
  active = {
    left = {{'mode', 'paste'}, {'readonly', 'filename', 'modified'}}
  },
  tabline = {
    left = {{'buffers'}}
    -- right = {{'close'}}
  },
  component_expand = {
    buffers = 'lightline#bufferline#buffers'
  },
  component_type = {
   buffers = 'tabsel'
  }
}

vim.cmd([[
  set noshowmode
  set showtabline=2
]])
