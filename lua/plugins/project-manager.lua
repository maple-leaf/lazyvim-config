return {
  "ahmedkhalf/project.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("projects")
    end,
  },
  config = function()
    require("project_nvim").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })
  end,
  keys = {
    { "<leader>p", "<cmd>Telescope projects<cr>", desc = "Load project" },
  },
}
