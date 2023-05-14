return {
  {
    "barrett-ruth/live-server.nvim",
    build = "yarn global add live-server",
    config = true,
    event = "User AstroFile",
  },
  {
    "echasnovski/mini.surround",
    config = function() require("mini.surround").setup() end,
    event = "User AstroFile",
    -- version = false
  },
  -- {
  --   "ThePrimeagen/vim-be-good",
  --   event = "User AstroFile",
  -- },
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "folke/todo-comments.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  -- config = function()
  --   require("todo-comments").setup {
  --     -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --   }
  -- end,
  --   opts = {},
  --   event = "User AstroFile",
  --   cmd = { "TodoQuickFix" },
  --   keys = {
  --     { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
  --   },
  -- },
}
