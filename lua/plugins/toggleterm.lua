return
{
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
    require("toggleterm").setup
    {
      hide_numbers = true,
      shade_terminals = true,
      direction = 'float',
      auto_scroll = true,

      float_opts = {
        border = 'curved',
        title_pos = 'center'
      }
    } 
    end,
  }
}
