return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false,
        transparent = false,
        theme = "dragon", -- options: "wave", "dragon", "lotus"
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}
