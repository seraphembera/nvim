return
{
 {
   'akinsho/bufferline.nvim',
   version = "*",
   dependencies = {'nvim-tree/nvim-web-devicons'},
   config = function()
     require("bufferline").setup{
        options = {
          close_command = "BufDel",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
      }
     }
   end,
 }
}
