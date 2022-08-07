require("toggleterm").setup{
  open_mapping = [[<c-\>]],
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  start_in_insert = true,
  direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved',
  },
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}
