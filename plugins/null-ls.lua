return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting,
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.formatting.stylua,
      -- webdev stuff
      -- null_ls.builtins.formatting.deno_fmt,
      -- null_ls.builtins.formatting.deno_fmt.with {
      --   extra_args = {
      --     "--options-no-semicolons",
      --     "--options-single-quote",
      --     "--use-tabs",
      -- }, -- choosed deno for ts/js files cuz its very fast!
      null_ls.builtins.formatting.prettierd.with {
        filetypes = {
          "html",
          "markdown",
          "css",
          "json",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "javascript.jsx",
          "typescript.tsx",
        },
        extra_args = {
          -- "--no-semi",
          "--single-quote",
          "--jsx-single-quote",
        },
      }, -- so prettier works only on these filetypes
    }
    return config -- return final config table
  end,
}
