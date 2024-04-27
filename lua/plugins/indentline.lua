return
{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = 
  {
    exclude = 
    {
      filetypes = 
      {
          "dashboard",
          "terminal",
          "help",
          "log",
          "markdown",
          "TelescopePrompt",
       }
    }
  },
  config = function()
    require("ibl").setup(
      {
        scope = { enabled = false }
      }
    )
  end,
}
