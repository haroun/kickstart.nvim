return { -- Autoformat
  -- does not work for single quote
  -- 'stevearc/conform.nvim',
  -- opts = {
  --   notify_on_error = false,
  --   format_on_save = function(bufnr)
  --     -- Disable "format_on_save lsp_fallback" for languages that don't
  --     -- have a well standardized coding style. You can add additional
  --     -- languages here or re-enable it for the disabled ones.
  --     local disable_filetypes = { c = true, cpp = true }
  --     return {
  --       timeout_ms = 500,
  --       lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
  --     }
  --   end,
  --   formatters_by_ft = {
  --     lua = { 'stylua' },
  --     -- Conform can also run multiple formatters sequentially
  --     -- python = { "isort", "black" },
  --     --
  --     -- You can use a sub-list to tell conform to run *until* a formatter
  --     -- is found.
  --     -- javascript = { { "prettierd", "prettier" } },
  --   },
  --   formatters = {
  --     deno_fmt = {
  --       prepend_args = { '--single-quote', 'true' },
  --     },
  --   },
  -- },
  -- init = function()
  --   local util = require 'conform.util'
  --   local prettier = require 'conform.formatters.prettier'
  --   require('conform').formatters.prettier = vim.tbl_deep_extend('force', prettier, {
  --     args = util.extend_args(prettier.args, { '--single-quote' }),
  --     range_args = util.extend_args(prettier.range_args, { '--single-quote' }),
  --   })
  --
  --   -- Pass append=true to append the extra arguments to the end
  --   local deno_fmt = require 'conform.formatters.deno_fmt'
  --   require('conform').formatters.deno_fmt = vim.tbl_deep_extend('force', deno_fmt, {
  --     args = util.extend_args(deno_fmt.args, { '--single-quote' }, { append = true }),
  --   })
  -- end,
}
