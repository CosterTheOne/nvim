local borderArr = {
  {"+"},
  {"-"},
  {"+"},
  {"|"},
  {"+"},
  {"-"},
  {"+"},
  {"|"},
}


return {
  'stevearc/oil.nvim',
  dependencies = { { "nvim-mini/mini.icons",} },
  lazy = false,
  config = function()
    require("oil").setup {
      view_options = {
        show_hidden = true,
      },

      float = {
        padding = 2,
        max_width = 0.3,
        max_height = 0.6,
        border = require("OneCoster.core.winborder").funOne,
        override = function(conf)
          return conf
        end,
      },

    }
    vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    vim.keymap.set('n', '<leader>n', require("oil").toggle_float, { desc = "Open dir in float"})
  end
}
