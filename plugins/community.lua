return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.tokyonight" },
  {
    "tokyonight.nvim",
    opts = {
      style = "moon",
    },
  },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  {
    "todo-comments.nvim",
    cmd = { "TodoQuickFix" },
    keys = {
      {
        "<leader>T",
        "<cmd>TodoTelescope<cr>",
        desc = "Open TODOs in Telescope",
      },
    },
    opts = {},
    event = "VeryLazy",
  },
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  { import = "astrocommunity.editing-support.neogen" },
  -- { import = "astrocommunity.editing-support.cutlass-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  -- { import = "astrocommunity.motion.mini-surround" },
  -- {
  --   "mini.surround",
  --   event = "VeryLazy",
  -- },
  { import = "astrocommunity.project.project-nvim" },
  {
    "project.nvim",
    cmd = "Projects",
    keys = {
      {
        "<leader>P",
        "<cmd>Telescope projects<cr>",
      },
    },
    desc = "Projects. Add project root: ProjectRoot",
    opts = {
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    },
  },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
}
