-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<C-u>"] = { "<C-u>zz", desc = "Scroll up center" },
    ["<C-d>"] = { "<C-d>zz", desc = "Scroll down center" },

    -- FROM NVCHAD POJOK KODE
    ["<C-]>"] = { function() require("Comment.api").toggle.linewise.current() end, desc = "Toggle Linewise Current" },
    -- ["<c-c>"] = { '"+y', desc = " " },
    -- ["<c-v>"] = { '"+p', desc = " " },
    ["<S-Down>"] = { "<cmd>t.<cr>", desc = " " },
    ["<S-Up>"] = { "<cmd>t -1<cr>", desc = " " },
    ["<M-J>"] = { "<cmd>t.<cr>", desc = " " },
    ["<M-K>"] = { "<cmd>t -1<cr>", desc = " " },
    ["<M-Down>"] = { "<cmd>m+<cr>", desc = " " },
    ["<M-Up>"] = { "<cmd>m-2<cr>", desc = " " },
    ["<M-j>"] = { "<cmd>m+<cr>", desc = " " },
    ["<M-k>"] = { "<cmd>m-2<cr>", desc = " " },
    ["<leader>bf"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = "Format buffer" },
    -- ["q"] = { "<cmd>q<cr>", desc = " " },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New Tab" },
    -- ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = " " },
    -- ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = " " },
    -- ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = " " },
  },
  -- t = {
  -- setting a mapping to false will disable it
  -- ["<esc>"] = false,
  -- },

  -- FROM NVCHAD POJOK KODE
  i = {
    ["<c-c>"] = { '"+y', desc = " " },
    ["<c-v>"] = { "<c-r>+", desc = " " },
    ["<S-Down>"] = { "<cmd>t.<cr>", desc = "Copy line down" },
    ["<M-Down>"] = { "<cmd>m+<cr>", desc = "Move line down" },
    ["<S-Up>"] = { "<cmd>t -1<cr>", desc = "Copy line upe" },
    ["<M-Up>"] = { "<cmd>m-2<cr>", desc = "Move line down" },
    ["<C-s>"] = { "<cmd>w<cr>", desc = " " },
    ["<C-l>"] = { "<cmd>LiveServer start<cr><cr>", desc = " " },
    -- ["<C-f>"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = " " },
  },
  -- FROM NVCHAD POJOK KODE
  v = {
    ["<C-]>"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = " " },
    ["<A-j>"] = { ":m .+1<CR>==", desc = " " },
    ["<A-k>"] = { ":m .-2<CR>==", desc = " " },
    ["p"] = { '"_dP', desc = " " },
    -- ["<c-c>"] = { '"+y', desc = " " },
    -- ["<c-v>"] = { '"+p', desc = " " },
    ["J"] = { ":move '>+1<CR>gv-gv", desc = " " },
    ["K"] = { ":move '<-2<CR>gv-gv", desc = " " },
    -- ["<A-j>"] = { ":move '>+r<CR>gv-gv", desc = " " },
    ["<A-Down>"] = { ":move '>+1<CR>gv-gv", desc = " " },
    -- ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = " " },
    ["<A-Up>"] = { ":move '<-2<CR>gv-gv", desc = " " },
    ["<S-Down>"] = { ":'<,'>t'><cr>", desc = " " },
  },
}
