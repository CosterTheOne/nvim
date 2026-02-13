return {'akinsho/bufferline.nvim',
version = "*",
dependencies = 'nvim-tree/nvim-web-devicons',


config = function()
  vim.opt.termguicolors = true
  local bufferline = require('bufferline')
  bufferline.setup({
    options = {
      show_close_icon = false,
      show_buffer_close_icons = false,
    }
  })
  -- keybindings
  vim.o.showtabline = 0 
  vim.keymap.set("n", "<leader>b[", ":BufferLineCyclePrev<CR>")
  vim.keymap.set("n", "<leader>b]", ":BufferLineCycleNext<CR>")
  vim.keymap.set("n", "<leader>bd", ":bd<CR>")
  vim.keymap.set("n", "<leader>bc", function()
    vim.cmd("BufferLineGoToBuffer " .. vim.v.count)
  end)
  vim.keymap.set("n", "<leader>bt", function()
    if vim.o.showtabline == 2 then
      vim.o.showtabline = 0
    else
      vim.o.showtabline = 2
    end
  end)
end
}


