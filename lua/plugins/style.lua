vim.api.nvim_create_user_command('Bc',function()
    require("gruvbox").setup({
        transparent_mode = true
    })
    vim.cmd("colorscheme gruvbox")
end,{})

vim.api.nvim_create_user_command('Bo',function()
    require("gruvbox").setup({
        transparent_mode = false
    })
    vim.cmd("colorscheme gruvbox")
end,{})

return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = false,
    }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
