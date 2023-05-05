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
      null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettierd.with {
      --   extra_args = {
      --     "--no-semi",
      --     "--single-quote",
      --     "--jsx-single-quote",
      --     "--brackest-spacing",
      --   },
      -- },
      -- webdev stuff
      -- null_ls.builtins.formatting.deno_fmt,
      null_ls.builtins.formatting.deno_fmt.with {
        extra_args = {
          "--no-semicolons",
          "--single-quote",
          "--use-tabs",
          -- "line-width=80",
          -- "indent-width=2",
          -- "semiColons": false,
          -- "singleQuote": true,
          -- "proseWrap": "preserve",
        },
      }, -- choosed deno for ts/js files cuz its very fast!
      null_ls.builtins.formatting.prettierd.with {
        filetypes = {
          "html",
          "markdown",
          "css",
        },
      },          -- so prettier works only on these filetypes
    }
    return config -- return final config table
  end,
}
