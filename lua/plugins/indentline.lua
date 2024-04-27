return
{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = 
  {
  },
  config = function()
    require("ibl").setup(
      {
        scope = { enabled = false },
        exclude = {
          buftypes = {
              'nofile',
              'terminal',
          },
          filetypes = {
              'help',
              'startify',
              'log',
              'dashboard',
              'Lazy',
              'neogitstatus',
              'NvimTree',
              'neo-tree',
              'Trouble',
              "TelescopePrompt",
          },
        }
      }
    )
  end,
}
