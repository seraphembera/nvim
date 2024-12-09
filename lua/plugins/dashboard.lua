return
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = {
      theme = "doom",
      config = {
          -- https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=neovim
          header = {
              "                                                    ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
              " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
              " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
              " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
              " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
              " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
              " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
              "                                                    ",
          },
          center = {
              {
                  icon = " ",
                  desc = "File explorer",
                  key = 't',
                  action = "enew | NvimTreeToggle",
              },
              {
                  icon = " ",
                  desc = "Find files",
                  key = 'f',
                  action = "Telescope find_files",
              },
              {
                icon = " ",
                desc = "Leetcode",
                key = 'l',
                action = "Leet",
              },
              {
                  icon = " ",
                  desc = "Recent",
                  key = 'r',
                  action = "Telescope oldfiles",
              },
              {
                  icon = " ",
                  desc = "Settings",
                  key = 's',
                  action = "e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd",
              },
              {
                  icon = " ",
                  desc = "Quit",
                  key = 'q',
                  action = "qa",
              },
          },
          footer = {},
          },
      },
  config = function(_, opts)
    require('dashboard').setup(opts)
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
