return
{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local actions = require("telescope.actions")
      require('telescope').setup{
        defaults = {
            mappings = {
              i = {
                ["<Space>jk"] = actions.close,
              },
              n = {
                ["o"] = actions.select_default,
                ["<Space>jk"] = actions.close,
              },
            }
          },
       }
    end,
}
